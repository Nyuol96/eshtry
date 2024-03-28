import 'package:eshtry/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var emailContorller = TextEditingController();
    var passwordContorller = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Login'),
          Text(
            'Login now to browse our Hot Offers',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: Colors.grey),
          ),
          SizedBox(
            height: 30,
          ),
          defaultFormField(
              controller: emailContorller,
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icons.email,
              // validate: (String value) {
              //  if (value.isEmpty) {
              //    return 'please enter your email address';
              //   }
              // },
              label: 'Email Address'),
        ]),
      ),
    );
  }
}// TODO Implement this library.