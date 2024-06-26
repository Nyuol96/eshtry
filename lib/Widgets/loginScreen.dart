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
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
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
          defaultFormField(
              controller: passwordContorller,
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: Icons.visibility_outlined,
              suffixPressedFuncion: () {},
              // validate: (String value) {
              //  if (value.isEmpty) {
              // return 'password is too short';

              // }
              // },
              label: 'Password'),
          SizedBox(
            height: 30,
          ),
          defaultButton(
            function: () {},
            text: 'Login',
            isUppercase: true,
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [Text('Dont Have an Account, Register ')],
          )
        ]),
      ),
    );
  }
}// TODO Implement this library.