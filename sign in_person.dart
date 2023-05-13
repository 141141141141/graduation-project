import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled_1/shared/components/components.dart';

class SigninPerson  extends StatefulWidget {


  @override
  State<SigninPerson> createState() => _SigninPersonScreenState();
}

class _SigninPersonScreenState extends State<SigninPerson> {
  var emailController= TextEditingController();

  var passwordController= TextEditingController();

  var formKey =GlobalKey <FormState>();

  bool isPassword =true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [






                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                'Sign in',
                                style: TextStyle(
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.bold
                                ),
                    ),
                              ],
                            ),



                  SizedBox(
                    height: 60.0,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/sign in.png'),
                        height: 250.0,
                        width: 250.0,
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (String? value) {
                      print(value);
                    },
                    onChanged: (String? value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: HexColor('063455')),
                      prefixIcon: Icon(
                        Icons.email,
                        color: HexColor('063455'),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 15.0,
                  ),



                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onFieldSubmitted: (String? value) {
                      print(value);
                    },
                    onChanged: (String? value) {
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: HexColor('063455')),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: HexColor('063455'),
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => null,
                        child: Text('Forget password?'),
                        style: ButtonStyle(
                          foregroundColor: MaterialStatePropertyAll(Colors.blueGrey),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 10.0,
                  ),
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
                        'Sign in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),







                  SizedBox(
                    height: 10.0,
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
                          'Sign Up',
                          style: TextStyle(
                            color: HexColor('063455'),
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );


  }
}









