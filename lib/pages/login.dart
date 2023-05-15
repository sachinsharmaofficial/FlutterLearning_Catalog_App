import "package:flutter/material.dart";

import "../utils/routes.dart";

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String name = "";
  bool change = false;
  final _formkey = GlobalKey<FormState>();

  movetohome(BuildContext context) async {
    if (_formkey.currentState?.validate() ?? false) {
      // print("hello");
      setState(() {
        change = true;
      });

      await Future.delayed(Duration(seconds: 2));
      await Navigator.pushNamed(context, MyRoutes.homeroute);

      setState(() {
        change = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(children: [
            SizedBox(
              height: 40.0,
            ),
            Image.asset(
              "assets/image/hey.png",
              fit: BoxFit.cover,
              // height: 600,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 50.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter your Username",
                      labelText: "Username",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Username Cannot be Empty";
                      }
                      return null;
                    },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter your Password",
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Password Cannot be Empty";
                      } else if (value.length < 6) {
                        return "Password length should be atleast 6";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Material(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(change ? 50 : 7),
                child: InkWell(
                  splashColor: Colors.red,
                  onTap: () => movetohome(context),
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    height: 50,
                    width: change ? 50 : 150,
                    alignment: Alignment.center,
                    child: change
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 25,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
