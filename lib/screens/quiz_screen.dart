import 'package:flutter/material.dart';
import 'package:quizapp/components/body.dart';
import 'package:websafe_svg/websafe_svg.dart';

class QuizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      actions: [
        TextButton(
            onPressed: (){},
            child: Text("Skip" ,
                style: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.white)
        )
        )
      ],
      ),
      body: Body()
    );
  }
}
//I used Container in body prop of scaffold but then through refractor extract widget it became a separate function and all done below
// and now it is cut and paste into body.dart

