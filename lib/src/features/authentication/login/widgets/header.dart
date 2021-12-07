import 'package:flutter/material.dart';

import 'fade_slide_transition.dart';

class Header extends StatelessWidget {
  final Animation<double> animation;

  const Header({
    Key? key,
    required this.animation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 16.0),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 0.0,
            child: Text(
              'Welcome to Kootha',
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 8.0),
          FadeSlideTransition(
            animation: animation,
            additionalOffset: 16.0,
            child: Text(
              'One and only place to find perfect place to live',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: Colors.black.withOpacity(0.5)),
            ),
          ),
        ],
      ),
    );
  }
}
