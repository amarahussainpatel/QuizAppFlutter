import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quizapp/constants.dart';
import 'package:websafe_svg/websafe_svg.dart';

class WelcomeScreen extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      //Stack positions its children relative to the edges of its box.
      body: SafeArea(
        child:
          //WebsafeSvg.asset("assets/icons/bg.svg" , fit: BoxFit.fill),
          //Image.network("assets/icons/bg.jpg" , fit: BoxFit.fill),
          Container(
            decoration: BoxDecoration(
            image: DecorationImage(
            image: AssetImage('assets/icons/black.jpg'),
            fit: BoxFit.cover,
                )),
              child: Padding(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //Spacer creates an adjustable, empty spacer that can be used to tune the spacing between widgets in a Flex container, like Row or Column.
                    Spacer(flex: 2), //total 4 spacers are used, this spacer takes 2/6 (6 bcs 2 spacers have flex 2, else are default)
                    Text(
                      "Let's Play Quiz",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(
                      "Enter your information below:",
                    ),
                    Spacer(), //1/6
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(808080),
                          hintText: "Full Name" ,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12))
                          ),
                      ),
                    ),
                    Spacer(), //1/6
                    //Inkwell is a rectangular area of a Material that responds to touch. It must have
                    InkWell(
                      onTap: (){},
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(kDefaultPadding),
                        decoration: BoxDecoration(
                          gradient: kPrimaryGradient,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                      child: Text("LETS GET STARTED",
                        style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: Colors.black)
                      ),
                      ),
                    ),
                    Spacer(), //2/6
                  ],
                ),
              ),
          ),
        //],
      ),
    );
  }
}