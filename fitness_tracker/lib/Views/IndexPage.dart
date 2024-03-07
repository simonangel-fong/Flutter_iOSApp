import 'package:fitness_tracker/Views/Layout/base.dart';
import 'package:fitness_tracker/Views/LoginPage.dart';
import 'package:fitness_tracker/Views/TestPage.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseLayout(
      navTitle: "Home",
      body: const IndexBody(),
    );
  }
}

class IndexBody extends StatefulWidget {
  const IndexBody({super.key});

  @override
  State<IndexBody> createState() => _IndexBodyState();
}

class _IndexBodyState extends State<IndexBody> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
            child: const Text('Login'),
          ),
          Container(
            height: 30,
          ),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TestPage(),
                ),
              );
            },
            child: const Text('Test'),
          ),
        ],
      ),
    );
  }
}
