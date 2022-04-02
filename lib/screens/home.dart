import 'package:auto_route/auto_route.dart';
import 'package:fetch_data/routes/router.gr.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Screen'),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                AutoRouter.of(context).push(
                  const Profile(),
                );
              },
              child: const Text('Go To Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
