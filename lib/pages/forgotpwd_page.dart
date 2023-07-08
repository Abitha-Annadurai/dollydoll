import 'package:dollydoll/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class ForgotPwd extends StatefulWidget {
  ForgotPwd({Key? key}) : super(key: key);

  @override
  _ForgotPwdState createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {
  final _formKey = GlobalKey<FormState>();

  var email = "";

  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final emailController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    emailController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Reset Password', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 27 ),),
      ),
      body: Column(
        children: [
          Expanded(
            child: Form(
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
                       //   labelStyle: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold),
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
                      margin: EdgeInsets.only(left: 60.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.black,),
                            onPressed: () {},
                            child: Text('Send Email', style: TextStyle(fontSize: 18.0, color: Colors.white),),
                          ),
                          TextButton(
                            onPressed: () => {Navigator.pushAndRemoveUntil(context, PageRouteBuilder(
                              pageBuilder: (context, a, b) => LoginPage(),
                              transitionDuration: Duration(seconds: 0),
                            ),
                                    (route) => false)
                            },
                            child: Text('Login',
                                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,
                                    color: Colors.black54)
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
                                Navigator.pushAndRemoveUntil(context, PageRouteBuilder(
                                  pageBuilder: (context, a, b) => SignupPage(),
                                  transitionDuration:
                                  Duration(seconds: 0),
                                ),
                                        (route) => false)
                              },
                              child: Text('Sign Up',style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,
                                  color: Colors.black54)))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
