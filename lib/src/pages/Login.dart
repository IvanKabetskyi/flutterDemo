import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/src/block/carrier/app_state_bloc.dart';
import 'package:my_app/src/block/carrier/app_state_event.dart';
import 'package:url_launcher/url_launcher.dart';

import './../components/Input.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  AppBloc appBloc;
  final company = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  String companyError;
  String emailError;
  String pwdError;

  @override
  void initState() {
    super.initState();
    appBloc = BlocProvider.of<AppBloc>(context);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        body: GestureDetector(
          onTap: clickOutsideTextFeild,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg_pic_login.png'),
                  fit: BoxFit.cover),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Container(),
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.85,
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/logo.png'),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  FractionallySizedBox(
                    widthFactor: .8,
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InputContainer(
                              key: Key('Company'),
                              myController: company,
                              title: 'Company',
                              icon: Icons.contact_mail,
                              errMessage: companyError,
                              validation: companyValidation,
                              maxlength: 3),
                          InputContainer(
                              key: Key('Email'),
                              myController: email,
                              title: 'Email',
                              icon: Icons.email,
                              errMessage: emailError,
                              validation: emailValidation,
                              keyboardType: TextInputType.emailAddress),
                          InputContainer(
                              key: Key('Password'),
                              myController: password,
                              title: 'Password',
                              icon: Icons.lock,
                              obscureText: true,
                              errMessage: pwdError,
                              validation: pwdValidation),
                          SizedBox(
                            height: 10.0,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Wrap(
                              runSpacing: 4.0,
                              children: <Widget>[
                                Text(
                                  'By signing in, you agree to the ',
                                  style: TextStyle(
                                      color: Color(0xFFB0BEC5), fontSize: 14),
                                ),
                                InkWell(
                                  child: Text(
                                    'private police.',
                                    style: TextStyle(
                                        color: Colors.white,
                                        decoration: TextDecoration.underline,
                                        fontSize: 14),
                                  ),
                                  onTap: _launchPrivatePolice,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          RawMaterialButton(
                            fillColor: Color(0xFF28bbff),
                            splashColor: Color(0xFF0386d2),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8.0))),
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(6),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Log In',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                            onPressed: () async {
                              appBloc.add(FetchLogin(
                                  company: company.text,
                                  email: email.text,
                                  password: password.text,
                                  context: context));
                            },
                          ),
                        ]),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Column(children: <Widget>[
                    Text(
                      'Powered by Rhino Technologies',
                      style: TextStyle(color: Color(0xFFB0BEC5)),
                    ),
                    Text(
                      'version 1.20.8-testing',
                      style: TextStyle(color: Color(0xFFB0BEC5), fontSize: 11),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ]),
                ]),
          ),
        ),
      ),
    );
  }

  _launchPrivatePolice() async {
    launch('https://rhinocodes.com/privacy.html');
  }

  void clickOutsideTextFeild() {
    FocusScope.of(context).unfocus();
  }

  void companyValidation() {
    setState(() {
      if (company.text.length < 2) {
        companyError = 'Please, enter two letter company code.';
      } else {
        companyError = null;
      }
    });
  }

  void emailValidation() {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email.text);
    setState(() {
      if (!emailValid) {
        emailError = 'Please, enter valid eamil address.';
      } else {
        emailError = null;
      }
    });
  }

  void pwdValidation() {
    setState(() {
      if (password.text.length < 6) {
        pwdError = 'Password must contain minimum 6 symbols.';
      } else {
        pwdError = null;
      }
    });
  }
}
