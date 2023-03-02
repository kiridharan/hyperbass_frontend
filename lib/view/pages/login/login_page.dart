import 'package:blockchain/view/components/home/topbar.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0),
        child: TopBarFb(
          func: () => Navigator.pop(context),
          autoback: false,
          title: 'Login',
          upperTitle: "Login to your account",
        ),
      ),
      body: const Center(
        child: Text('Login Page'),
      ),
    );
  }
}
