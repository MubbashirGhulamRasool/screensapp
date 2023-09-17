import 'package:flutter/material.dart';
import 'package:screensapp/screens/signin/signup_view.dart';
import '../catalog/catalog_view.dart';
import '../home/home_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginView> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void login() {
    String username = usernameController.text;
    String password = passwordController.text;

    // if (username == "admin" && password == "123") {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => CatalogView(),
        ),
      );
    // }
  }

  void onLinkButtonPressed() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SignupView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Container(
        color: Color(0xFFF8A400),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: usernameController,
                  decoration: InputDecoration(labelText: "Username"),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: passwordController,
                  obscureText: true, // Hide the password
                  decoration: InputDecoration(labelText: "Password"),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: login,
                  child: Text("Login"),
                ),
                SizedBox(height: 20),
                InkWell(
                  // The onTap callback is triggered when the InkWell is tapped.
                  onTap: onLinkButtonPressed,
                  child: const Text(
                    'SignUp',
                    style: TextStyle(
                      color: Colors.blue, // Set the text color to blue
                      decoration: TextDecoration
                          .underline, // Add an underline to the text
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
