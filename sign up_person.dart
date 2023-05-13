import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SignupPerson extends StatefulWidget {


  @override
  State<SignupPerson> createState() => _SignupPersonState();
}

class _SignupPersonState extends State<SignupPerson> {
  bool isChecked=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10.0,),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(

                  labelText: 'Full Name',
                  labelStyle: TextStyle(color: HexColor('063455')),
                  prefixIcon: Icon(
                    Icons.person,
                    color: HexColor('063455'),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(

                  labelText: 'Email',
                  labelStyle: TextStyle(color: HexColor('063455')),
                  prefixIcon: Icon(
                    Icons.email_sharp,
                    color: HexColor('063455'),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(

                  labelText: 'Gender',
                  labelStyle: TextStyle(color: HexColor('063455')),
                  prefixIcon: Icon(
                    Icons.male,
                    color: HexColor('063455'),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(

                  labelText: 'Age',
                  labelStyle: TextStyle(color: HexColor('063455')),
                  prefixIcon: Icon(
                    Icons.people,
                    color: HexColor('063455'),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(

                  labelText: 'Phone Number',
                  labelStyle: TextStyle(color: HexColor('063455')),
                  prefixIcon: Icon(
                    Icons.phone_android,
                    color: HexColor('063455'),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(

                  labelText: 'Password',
                  labelStyle: TextStyle(color: HexColor('063455')),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: HexColor('063455'),
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: HexColor('063455'),
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(

                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: HexColor('063455')),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: HexColor('063455'),
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: HexColor('063455'),
                  ),
                ),
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      value: isChecked,
                      activeColor:HexColor('063455') ,
                      onChanged: (newBool){
                        setState(() {
                          isChecked=newBool!;
                        });

                      },
                  ),
                  Text(
                    'I agree to',
                  ),
                  TextButton(
                    onPressed: () {},

                    child: Text(
                      'Terms and Conditions',
                      style: TextStyle(
                        color: HexColor('063455'),
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],

              ),
              SizedBox(height: 10.0,),

              Container(
                decoration: BoxDecoration(
                  color: HexColor('063455'),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: double.infinity,
                child: MaterialButton(
                  onPressed: () {
                    var emailcontroller;
                    print(emailcontroller.text);
                    var passwordcontroller;
                    print(passwordcontroller.text);
                  },
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                  ),
                  TextButton(
                    onPressed: () {},

                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: HexColor('063455'),
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ],
              )







            ],
          ),
        ),
      ),










    );
  }
}
