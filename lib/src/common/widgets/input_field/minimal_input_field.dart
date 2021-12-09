import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:roomfinder/src/common/constants/constants.dart';

class MinimalInputField extends StatefulWidget {
  const MinimalInputField({
    Key? key,
    required this.hintText,
    this.textInputType,
    this.focusNode,
    this.isPassword = false,
    this.textEditingController,
    this.autofocus,
    this.maxLines,
    this.onChanged,
    this.errorText,
  }) : super(key: key);
  final String hintText;
  final TextInputType? textInputType;
  final TextEditingController? textEditingController;
  final FocusNode? focusNode;
  final bool? autofocus;
  final int? maxLines;
  final bool isPassword;
  final void Function(String)? onChanged;
  final String? errorText;

  @override
  _MinimalInputFieldState createState() => _MinimalInputFieldState();
}

class _MinimalInputFieldState extends State<MinimalInputField> {
  final TextEditingController mobileTextController = TextEditingController();
  FocusNode? focusNode;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            child: Container(
              height: 50.0,
              decoration: BoxDecoration(
                  color: kWhiteColor, borderRadius: BorderRadius.circular(8.0)),
              margin: const EdgeInsets.only(bottom: kDefaultPadding - 5),
              child: TextFormField(
                onChanged: widget.onChanged,
                obscureText: widget.isPassword,
                autofocus: widget.autofocus ?? false,
                focusNode: widget.focusNode,
                onTap: () {},
                controller: widget.textEditingController,
                maxLines: widget.isPassword ? 1 : widget.maxLines,
                decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: const TextStyle(
                        color: ksearchText, fontWeight: FontWeight.normal),
                    border: InputBorder.none,
                    errorText: widget.errorText,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.all(16.0)),
                keyboardType: widget.textInputType ?? TextInputType.text,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
