import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Login());
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.pink,
      ),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.pink),
      home: LoginUser(title: 'Login'),
    );
  }
}

class LoginUser extends StatelessWidget {
  final String title;
  const LoginUser({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.black26,
    ));
    return Scaffold(
      body: LoginForm(),
    );
  }
}

class LoginForm extends StatefulWidget {
  loginFormState createState() {
    return loginFormState();
  }
}

class loginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}
