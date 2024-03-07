import 'package:fitness_tracker/Views/Layout/base.dart';
import 'package:flutter/material.dart';
import 'package:fitness_tracker/Views/SignupPage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      navTitle: "Login",
      body: const LoginPageBody(),
    );
  }
}

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({Key? key}) : super(key: key);

  @override
  State<LoginPageBody> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPageBody> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: TextField(
              controller: _emailController,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          ElevatedButton(
            onPressed: () {
              print(
                  'Email: ${_emailController.text}, Password: ${_passwordController.text}');
            },
            child: const Text('Login'),
          ),
          const SizedBox(
            height: 30.0,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SignupPage(),
                ),
              );
            },
            child: const Text('Create Account'),
          ),
        ],
      ),
    );
  }
}
