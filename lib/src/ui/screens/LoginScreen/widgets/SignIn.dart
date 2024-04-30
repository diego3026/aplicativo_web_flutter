import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});
  final supabase = Supabase.instance.client;

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late double _maxWidth;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void didChangeDependencies() {
    _maxWidth = MediaQuery.of(context).size.width * 0.5;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _maxWidth,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  labelText: "E-mail",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              obscureText: true,
              autocorrect: false,
              enableSuggestions: false,
              controller: passwordController,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FilledButton(
              child: Text("Login"),
              onPressed: () async {
                final response = await widget.supabase.auth.signInWithPassword(
                    email: emailController.text,
                    password: passwordController.text);
                if (response.user == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Verifique su informacion")));
                } else {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Bienvenido")));
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
