import 'package:ambrosia/style/colors.dart';
import 'package:ambrosia/widgets/button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const routeName = 'loginPage';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailFilter = TextEditingController();
  final TextEditingController _passwordFilter = TextEditingController();
  String _email = "";
  String _password = "";

  _LoginPageState() {
    _emailFilter.addListener(_emailListen);
    _passwordFilter.addListener(_passwordListen);
  }

  void _emailListen() {
    if (_emailFilter.text.isEmpty) {
      _email = "";
    } else {
      _email = _emailFilter.text;
    }
  }

  void _passwordListen() {
    if (_passwordFilter.text.isEmpty) {
      _password = "";
    } else {
      _password = _passwordFilter.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Container(
                color: ThemeColors.primaryBlue,
                child: Center(
                  child: Text(
                    'Ambrosia',
                    style: TextStyle(
                        fontSize: 18, color: ThemeColors.primaryWhite),
                  ),
                ),
                height: 114,
                width: 114,
              ),
              padding: EdgeInsets.all(32),
            ),
            _buildTextFields(),
            SizedBox(
              height: 16,
            ),
            Button(
              type: ButtonType.DEFAULT,
              text: Text(
                'LOGIN',
                style: TextStyle(color: ThemeColors.primaryWhite),
              ),
              onPressed: _loginPressed,
            ),
            SizedBox(
              height: 128,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextFields() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: TextField(
              controller: _emailFilter,
              decoration: InputDecoration(labelText: 'Email'),
            ),
          ),
          Container(
            child: TextField(
              controller: _passwordFilter,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }

  void _loginPressed() {
    print('The user wants to login with $_email and $_password');
  }
}
