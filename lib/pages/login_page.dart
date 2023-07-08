import 'package:dollydoll/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'forgotpwd_page.dart';
import '../home_screen.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  var email = "";
  var password = "";
  final emailController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 27 ),),
      ),

      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: ListView(
            children: [

              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    //labelStyle: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide()
                    ),
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 10),
                  ),
                  controller: emailController,
                  validator: (value) {
                    if (value == null || !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                      return 'Please Enter Email';
                    } else if (!value.contains('@')) {
                      return 'Please Enter Valid Email';
                    }
                    return null;
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password ',
                    labelStyle: TextStyle(fontSize: 15.0),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        )
                    ),
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 10),
                  ),
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                ),
              ),

              Container(
                margin: EdgeInsets.only(left: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: Text('Login', style: TextStyle(fontSize: 18.0, color: Colors.white),),
                    ),

                    TextButton(
                      onPressed: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPwd(),
                        ),)
                      },
                      child: Text('Forgot Password?', style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,
                          color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),


              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Account? "),
                    TextButton(
                      onPressed: () => {
                        Navigator.pushAndRemoveUntil(context, PageRouteBuilder(pageBuilder: (context, a, b) => SignupPage(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                                (route) => false)
                      },
                      child: Text('Sign Up', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,
                          color: Colors.black54)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}