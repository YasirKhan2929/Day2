import 'package:day2/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget{
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() =>_SignInScreenState();

}

class _SignInScreenState extends State<SignInScreen>{
  @override
  Widget build(BuildContext context) {
    return const CustomScaffold(
      child: Text('SignIn',),
    );
  }

}