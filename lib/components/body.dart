import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/components/progress_bar.dart';
import 'package:quizapp/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/black.jpg'),
              fit: BoxFit.cover,
            )
        ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  children: [
                    ProgressBar(),
                  ],
                ),
              ),
          ),
     ),
    );
  }
}

