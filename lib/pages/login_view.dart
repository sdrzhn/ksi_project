import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ksi/pages/item_page.dart';
import 'package:ksi/theme.dart';
import '../events/login_event.dart';
import '../state/login_state.dart';

class LoginView extends StatefulWidget {
  LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final _loginController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _secureText = true;
  bool _isLoading = false; 
  LoginState _loginState = LoginState.initial();

  
  showHide() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Log In',
          style: GoogleFonts.nunitoSans(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: _loginForm()
        ),
    );
  }

  Widget _loginForm() {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Image.asset(
              'assets/logo.png',
              width: 190,
              height: 91,
            ),
            SizedBox(height: 99),
            _usernameField(),
            SizedBox(
              height: 16,
            ),
            _passwordField(),
            SizedBox(
              height: 36,
            ),
            _loginButton(),
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      height: 40,
      width: 343,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: greyColor,
          width: 1.0,
        ),
      ),
      child: TextFormField(
         controller: _loginController,
        // onChanged: (value) {
        //   _handleEvent(LoginUserLoginChanged(login: value));
        // },
        decoration: InputDecoration(
          hintText: 'Login',
          hintStyle: regulerTextStyle.copyWith(fontSize: 14, color: greyColor),
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
        ),
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Please enter your login';
          }
          return null;
        },
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      height: 40,
      width: 343,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: greyColor, width: 1.0),
      ),
      child: TextFormField(
        controller: _passwordController,
        obscureText: _secureText,
        // onChanged: (value) {
        //   _handleEvent(LoginPasswordChanged(password: value));
        // },
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: showHide,
            icon: _secureText
                ? Icon(
                    Icons.visibility_off,
                    color: greyColor,
                    size: 22,
                  )
                : Icon(
                    Icons.visibility,
                    color: BlueDarkColor,
                    size: 22,
                  ),
          ),
          hintText: 'Password',
          hintStyle: regulerTextStyle.copyWith(fontSize: 14, color: greyColor),
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
        ),
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return 'Please enter your login';
          }
          return null;
        },
      ),
    );
  }


  Widget _loginButton() {
    return SizedBox(
    width: 346, 
    height: 48, 
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context)=> ItemPage()));
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100), 
        ),
        primary: BlueDarkColor, 
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Text(
        'Login',
        style: boldTextStyle.copyWith(fontSize: 16),
      ),
    ),
  );
  }
}