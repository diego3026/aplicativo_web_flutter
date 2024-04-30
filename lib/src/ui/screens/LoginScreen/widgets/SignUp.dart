import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SignUp extends StatefulWidget {
  SignUp({super.key});
  final supabase = Supabase.instance.client;

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late double _maxWidth;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
            child: TextField(
              obscureText: true,
              autocorrect: false,
              enableSuggestions: false,
              controller: confirmPasswordController,
              decoration: InputDecoration(
                  labelText: "Confirm password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FilledButton(
              child: Text("Register"),
              onPressed: () async {
                if (passwordController.text != confirmPasswordController.text) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Contraseñas distinas")));
                }

                final response = await widget.supabase.auth.signUp(
                  email: emailController.text,
                  password: passwordController.text,
                );

                if (response.user == null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Error al registrarse")));
                }

                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text("Registro exitoso")));
              },
            ),
          )
        ],
      ),
    );
  }
}
