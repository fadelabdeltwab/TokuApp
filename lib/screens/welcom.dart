import 'package:flutter/material.dart';
import 'package:toku/screens/login.dart';
import 'package:toku/screens/register_page.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedd9d9),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku | トク '),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text(
                  'ようこそ',
                  style: TextStyle(fontSize: 98),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffcc7c68),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const LoginPage();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Login | ログイン',
                  style: TextStyle(),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffcc7c68),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return const RegisterPage();
                      },
                    ),
                  );
                },
                child: const Text(
                  'Register | 登録する',
                  style: TextStyle(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
