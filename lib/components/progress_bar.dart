import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../constants.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF46A0AE) , width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Stack(
        children: [
          //Layout builder gives us the space available for container
          //we use constraints.maxwidth for the animation
          LayoutBuilder(
            builder: (context, constraints) => Container(
              width: constraints.maxWidth * 0.5, //0.5 for 50% 0.75 for 75%
              decoration: BoxDecoration(
                gradient: kPrimaryGradient,
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
          Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("18 sec"),
                    WebsafeSvg.asset("assets/icons/clock.svg"),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}