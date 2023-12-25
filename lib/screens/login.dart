import 'package:flutter/material.dart';
import 'package:toku/screens/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedd9d9),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text(
          'Login | ログイン',
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: ' Enter User Name',
                labelText: 'User Name',
                labelStyle: const TextStyle(color: Color(0xff4f1912)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(
                    color: Color(0xff4f1912),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(
                    color: Color(0xff4f1912),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: ' Enter Password',
                labelText: ' Password',
                labelStyle: const TextStyle(color: Color(0xff4f1912)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(
                    color: Color(0xff4f1912),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: const BorderSide(
                    color: Color(0xff4f1912),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffcc7c68),
            ),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const HomePage();
                  },
                ),
              );
            },
            child: const Text(
              ' Submit | 送信 ',
              style: TextStyle(),
            ),
          )
        ],
      ),
    );
  }
}
