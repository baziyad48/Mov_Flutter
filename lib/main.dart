import 'package:flutter/material.dart';
import 'package:mov_flutter/services/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () async {
                  SignInSignUpResult result = await AuthServices.signUp(
                      "baziyad@google.com",
                      "123456",
                      "Baziyad Hummam",
                      ["Action", "Horror", "Drama", "Romance"],
                      "English");

                  if (result.user == null) {
                    print(result.message);
                  } else {
                    print(result.user.toString());
                  }
                },
                child: Text("Sign Up"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
