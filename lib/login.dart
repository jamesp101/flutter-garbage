import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _MyLoginPage();
}

class _MyLoginPage extends State<LoginPage> {
  final _username = TextEditingController();
  final _password = TextEditingController();

  MediaQueryData? _media;

  EdgeInsets _padding() {

    if (_media!.size.width > 1200) {
      return const EdgeInsets.only(left: 400, right: 400);
    } else if (_media!.size.width > 900) {
      return const EdgeInsets.only(left: 300, right: 400);
    } else if (_media!.size.width > 600) {
      return const EdgeInsets.only(left: 200, right: 200);
    } else {
      return const EdgeInsets.all(16);
    }
  }

  @override
  Widget build(BuildContext context) {
    _media = MediaQuery.of(context);

    return Scaffold(
        body: Center(
            child: Padding(
      padding: _padding(),
      child: Column(
        children: [
         const SizedBox(height: 200,),
         const Icon(
           Icons.restore_from_trash,
           size: 100,
           color: Colors.teal,
         ),
         
         const Text('User Login', style: TextStyle(fontWeight: FontWeight.bold)),
         
         const SizedBox(height: 16,),

         const Text('Login Page'),
         const SizedBox(height: 50,),

          
          // Username Field
          TextFormField(
            controller: _username,
            decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person)),
          ),

          const SizedBox(height: 10.0),

          // Password Field
          TextFormField(
            controller: _password,
            obscureText: true,
            decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock)),
          ),
          const SizedBox(height: 16.0),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: 32,
                child: ElevatedButton(
                    onPressed: () => null,
                    child: const Text(
                      'LOGIN',
                    )),
              )
            ],
          )
        ],
      ),
    )));
  }
}
