import 'package:day2/components/screens/signIn_screen.dart';
import 'package:day2/components/screens/signUp_screen.dart';
import 'package:day2/widgets/custom_widget.dart';
import 'package:day2/widgets/welcome_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return  CustomScaffold(
      child: Column(
        children: [
          Flexible(
            flex: 8 ,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40,
              ),
              child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "WELCOME!\n",
                          style: TextStyle(
                            fontSize: 45,
                            fontWeight: FontWeight.w400,
                          )
                        ),
                        TextSpan(
                          text: '\n Enter Your Personal Details to Your Employee account\n',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ))
                      ],
                      ),
                    ),
                  ),
    )),
        const Flexible(
         flex: 1,
          child: Align(
            alignment: Alignment.bottomRight,
             child:  Row(
             children: [
               Expanded(child:
                 WelcomeButton(
                   buttonText: 'SignIn',
                   onTap: SignInScreen(),
                   color: Colors.lightBlueAccent,
                   textColor: Colors.white,
                 )
             ),
                Expanded(child:
                    WelcomeButton(
                      buttonText: 'SignUp',
                      onTap: SignUpScreen(),
                      color: Colors.lightBlueAccent,
                      textColor: Colors.white,
                    ),
                  ),
                      ],
                        ),
                           ), ),
        ],
      ),
    );
  }
}
