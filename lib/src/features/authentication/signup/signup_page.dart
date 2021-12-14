import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:roomfinder/src/app_localization.dart';
import 'package:roomfinder/src/common/constants/constants.dart';
import 'package:roomfinder/src/common/utils/app_size_utils.dart';
import 'package:roomfinder/src/common/widgets/custom_progress_indicator_overlay/custom_progress_indicator_overlay.dart';
import 'package:roomfinder/src/common/widgets/input_field/minimal_input_field.dart';
import 'package:roomfinder/src/common/widgets/size/custom_size_widget.dart';
import 'package:roomfinder/src/common/widgets/text/custom_normal_text_widget.dart';
import 'package:roomfinder/src/features/authentication/bloc/signup/signup_state.dart';
import 'package:roomfinder/src/features/authentication/bloc/signup/signup_state_notifier.dart';
import 'package:roomfinder/src/features/authentication/signup/widgets/register_error.dart';
import 'package:roomfinder/src/features/authentication/signup/widgets/register_success.dart';
import 'package:roomfinder/src/features/authentication/widgets/kootha_terms_conditions.dart';
import 'package:roomfinder/src/features/authentication/widgets/rounded_button_text.dart';
import 'package:roomfinder/src/features/authentication/widgets/social_login.dart';

class SignupPage extends ConsumerStatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends ConsumerState<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  _showCustomDialog({required String message, required isSuccess}) {
    showDialog(
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        child: isSuccess
            ? RegisterSuccessful(
                message: message,
              )
            : RegisterError(
                message: message,
              ),
      ),
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<SignupState>(signupStateProvider, (previous, next) {
      if (next.status.isSubmissionFailure) {
        _showCustomDialog(message: next.errorMessage!, isSuccess: false);
      }
      if (next.status.isSubmissionSuccess) {
        _showCustomDialog(message: next.successMessage!, isSuccess: true);
      }
    });
    return CustomProgressIndicatorOverlay(
      inAsyncCall: ref.watch(signupStateProvider).status ==
          FormzStatus.submissionInProgress,
      child: Scaffold(
        backgroundColor: kScafoldColor,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: SingleChildScrollView(
              child: SizedBox(
                height: SizeConfig.screenHeight,
                width: double.infinity,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => context.router.pop(),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: kBlackColor,
                      ),
                    ),

                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          NormalText(
                            "Register ",
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            color: kAppBarColor,
                          ),
                          HeightWidget(8.0),
                          NormalText(
                            "We will send verification Email \n  to verify it’s you.",
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: ksearchText,
                            isCentered: true,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    // Form Field
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Consumer(
                            builder: (ctx, ref, child) {
                              final state = ref.watch(signupStateProvider);
                              return MinimalInputField(
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "Field is required";
                                  }
                                  if (state.userName.invalid) {
                                    return "Invalid Name";
                                  }
                                  return null;
                                },
                                hintText: "Full Name",
                                errorText: state.userName.invalid
                                    ? "Invalid Name"
                                    : null,
                                onChanged: ref
                                    .read(signupStateProvider.notifier)
                                    .nameChanged,
                              );
                            },
                          ),
                          Consumer(
                            builder: (ctx, ref, child) {
                              final state = ref.watch(signupStateProvider);
                              return MinimalInputField(
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "Field is required";
                                  }
                                  if (state.email.invalid) {
                                    return "Invalid E-Mail";
                                  }
                                  return null;
                                },
                                hintText: "E-Mail",
                                errorText: state.email.invalid
                                    ? "Invalid E-Mail"
                                    : null,
                                onChanged: ref
                                    .read(signupStateProvider.notifier)
                                    .emailChanged,
                              );
                            },
                          ),
                          Consumer(
                            builder: (ctx, ref, child) {
                              final state = ref.watch(signupStateProvider);
                              return MinimalInputField(
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "Field is required";
                                  }
                                  if (state.password.invalid) {
                                    return "Invalid password";
                                  }
                                  return null;
                                },
                                hintText: "Password",
                                errorText: state.password.invalid
                                    ? "Invalid password"
                                    : null,
                                onChanged: ref
                                    .read(signupStateProvider.notifier)
                                    .passwordChanged,
                              );
                            },
                          ),
                          Consumer(
                            builder: (context, ref, child) {
                              final state = ref.watch(signupStateProvider);
                              return MinimalInputField(
                                textInputType: TextInputType.name,
                                validator: (String? value) {
                                  if (value!.isEmpty) {
                                    return "Field is required";
                                  }
                                  if (state.password != state.confirmPassword) {
                                    return "Passwords didn't match";
                                  }
                                  return null;
                                },
                                hintText: "Confirm Password",
                                errorText: state.confirmPassword.value.isEmpty
                                    ? null
                                    : state.password == state.confirmPassword
                                        ? null
                                        : 'Passwords didn\'t match',
                                onChanged: ref
                                    .read(signupStateProvider.notifier)
                                    .confirmPasswordChanged,
                              );
                            },
                          ),
                          NormalText(
                            "login_page.password_rule1".tr(context),
                            color: kDarkGrey,
                            fontSize: 16.0,
                          ),
                          NormalText(
                            "login_page.password_rule2".tr(context),
                            color: kDarkGrey,
                            fontSize: 16.0,
                          )
                        ],
                      ),
                    ),
                    // const Spacer(),
                    const HeightWidget(16.0),

                    RoundedButtonAndText(
                      buttonText: "Register",
                      optionText: "Already have an account? Login",
                      buttonTap: () async {
                        if (_formKey.currentState!.validate()) {
                          ref.read(signupStateProvider.notifier).signup();
                        } else {
                          return;
                        }
                      },
                      optionTap: () {
                        context.router.pop();
                      },
                    ),
                    const Spacer(),

                    const SocialLogin(),
                    const Spacer(),

                    const KoothaTermsAndConditions(),
                    const HeightWidget(16.0),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
