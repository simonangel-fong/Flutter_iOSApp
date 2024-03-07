import 'package:fitness_tracker/Views/IndexPage.dart';
import 'package:fitness_tracker/Views/Layout/base.dart';
import 'package:fitness_tracker/Controller/AuthService.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      navTitle: "Sign Up",
      body: const SignupPageBody(),
    );
  }
}

class SignupPageBody extends StatefulWidget {
  const SignupPageBody({Key? key}) : super(key: key);

  @override
  State<SignupPageBody> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPageBody> {
  final TextEditingController _emailTF = TextEditingController();
  final TextEditingController _pwdTF = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: TextField(
              controller: _emailTF,
              decoration: const InputDecoration(hintText: 'Email'),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: TextField(
              controller: _pwdTF,
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
            onPressed: () async {
              final message = await AuthService().registration(
                email: _emailTF.text,
                password: _emailTF.text,
              );
              if (message!.contains('Success')) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const IndexPage()));
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
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
