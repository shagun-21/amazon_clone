import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variable.dart';
import 'package:flutter/material.dart';

enum Auth{
  signin,
  signup
}


class AuthScreen extends StatefulWidget {
  static const String routeName='/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  Auth _auth=  Auth.signup;
  final signUpFormKey= GlobalKey<FormState>();
  final signInFormKey= GlobalKey<FormState>();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  final TextEditingController _namecontroller = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _namecontroller.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(child: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Welcome",
            style: TextStyle(fontSize: 22 ,
            fontWeight: FontWeight.w500),)
            ,ListTile(
              tileColor: _auth==Auth.signup?GlobalVariables.backgroundColor:GlobalVariables.greyBackgroundCOlor,
              title: Text("Create account",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signup,
                groupValue: _auth,
                onChanged: (Auth? val){
                  setState(() {
                    _auth= val!;
                  });
                },
              ),
            ),
            if(_auth==Auth.signup)
            Container(
              padding: EdgeInsets.all(8),
              color: GlobalVariables.backgroundColor,
              child: Form(
                key: signUpFormKey,
                child: Column(
                  children: [
                    CustomTextField(controller: _namecontroller,
                  hinttext: "Name",),
                  SizedBox(height: 10,),
                   CustomTextField(controller: _emailcontroller,
                  hinttext: "Email",),
                  SizedBox(height: 10,),
                   CustomTextField(controller: _passwordcontroller,
                  hinttext: "Password",),
                  SizedBox(height: 10,),
                  CustomButton(text: "Sign up",
                  ontap: (){},)
                  ],
                ),
              ),
            ),
            ListTile(
              tileColor: _auth==Auth.signin?GlobalVariables.backgroundColor:GlobalVariables.greyBackgroundCOlor,
              title: Text("Sign-In",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),),
              leading: Radio(
                activeColor: GlobalVariables.secondaryColor,
                value: Auth.signin,
                groupValue: _auth,
                onChanged: (Auth? val){
                  setState(() {
                    _auth= val!;
                  });
                },
              ),
            ),
            if(_auth==Auth.signin)
            Container(
              padding: EdgeInsets.all(8),
              color: GlobalVariables.backgroundColor,
              child: Form(
                key: signInFormKey,
                child: Column(
                  children: [
                   
                   CustomTextField(controller: _emailcontroller,
                  hinttext: "Email",),
                  SizedBox(height: 10,),
                   CustomTextField(controller: _passwordcontroller,
                  hinttext: "Password",),
                  SizedBox(height: 10,),
                  CustomButton(text: "Sign In",
                  ontap: (){},)
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

