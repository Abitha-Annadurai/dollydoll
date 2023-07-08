import 'package:flutter/material.dart';
import 'login_page.dart';

class SignupPage extends StatefulWidget {
  SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();

  var fname = "";
  var lname = "";
  var email = "";
  var address = "";
  var city = "";
  var state = "";
  var pincode = "";
  var phone = "";
  var password = "";
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final pincodeController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();


  int _countWords({required String text}) {
    final TrimmedText = text.trim();
    if(TrimmedText.isEmpty){
      return 0;
    } else {
      return TrimmedText.split(RegExp('\\s+')).length;
    }
  }


  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    fnameController.dispose();
    lnameController.dispose();
    emailController.dispose();
    addressController.dispose();
    cityController.dispose();
    stateController.dispose();
    pincodeController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 27 ),),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: ListView(
            children: [
              //firstname
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'First Name ',
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        )
                    ),
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 10),),
                  controller: fnameController,
                  validator: (value) { if (value == null || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return 'Please Enter First Name';
                  }
                  return null;
                  },),),

              //lastname
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        )
                    ),
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 10),),
                  controller: lnameController,
                  validator: (value) { if (value == null || !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                    return 'Please Enter Last Name';
                  }
                  return null;
                  },),),

              //email
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  decoration: InputDecoration(
                    labelText: 'Email ',
                //    labelStyle: TextStyle(fontSize: 15.0, color: Colors.black),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        )
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

              //address
              Container(
                child: TextFormField(
                    controller: addressController,
                    maxLines: 10,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: InputDecoration(
                      counterText: '${_countWords(text: this.addressController.text)}',
                      labelText: 'Enter Address',
                   //   labelStyle: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold),
                      alignLabelWithHint: true,
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(),
                      ),
                    ),
                    validator: (value) {
                      if (value == null) {
                        return 'Please Enter Address';
                      }
                      return null;
                    }
                ),
              ),

              //city
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'City ',
                 //   labelStyle: TextStyle(fontSize: 15.0, color: Colors.black),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black
                      ),
                    ),
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 10),
                  ),
                  controller: cityController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter City';
                    }
                    return null;
                  },
                ),
              ),

              //state
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'State ',
                 //   labelStyle: TextStyle(fontSize: 15.0, color: Colors.black),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        )
                    ),
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 10),
                  ),
                  controller: stateController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter State';
                    }
                    return null;
                  },
                ),
              ),

              //pincode
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                    keyboardType: TextInputType.number,
                    autofocus: false,
                    controller: phoneController,
                    decoration: const InputDecoration(
                      labelText: 'Pincode ',
                      border: UnderlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.redAccent,
                          fontSize: 10),),
                    //inputFormatters: <TextInputFormatter>[MaskedInputFormatter('##########')],
                    validator: (value) {
                      if (value == null || !RegExp(r"^[1-9]{1}[0-9]{2}\s{0,1}[0-9]{3}$").hasMatch(value)) {
                        return 'Please Enter Pincode';
                      }
                      return null;
                    }
                ),
              ),

              //phone number
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                    keyboardType: TextInputType.phone,
                    autofocus: false,
                    controller: phoneController,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: UnderlineInputBorder(),
                      errorStyle: TextStyle(color: Colors.redAccent,
                          fontSize: 10),),
                    //inputFormatters: <TextInputFormatter>[MaskedInputFormatter('##########')],
                    validator: (value) {
                      if (value == null || !RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                        return 'Please Enter Phone Number';
                      }
                      return null;
                    }
                ),
              ),

              //password
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    //labelStyle: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(),
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
                margin: EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                  //  labelStyle: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide()
                    ),
                    errorStyle: TextStyle(color: Colors.redAccent, fontSize: 10),
                  ),
                  controller: confirmPasswordController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                ),
              ),

              //button
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.black,),
                      onPressed: (){},
                      child: Text('Sign Up', style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account?"),
                    TextButton(
                        onPressed: () => {Navigator.pushReplacement(context, PageRouteBuilder(pageBuilder:
                            (context, animation1, animation2) => LoginPage(),
                          transitionDuration: Duration(seconds: 0),
                        ),
                        )
                        },
                        child: Text('Login Here', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold,
                            color: Colors.black54),))
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
