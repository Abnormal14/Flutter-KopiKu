import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'signup.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Color.fromARGB(255, 93, 80, 57),
              ),
        ),
        home: Scaffold(
            body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.topCenter,
              color: Colors.white,
              child: Column(
                children: [
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 125,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 32),
                    child: Text(
                      "KopiKu",
                      style: TextStyle(
                          fontFamily: 'DancingScript',
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          color: Colors.brown[800]),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      'Feel the pleasure of coffee like heaven',
                      style: TextStyle(
                          fontFamily: 'roboto',
                          color: Colors.grey[500],
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80, left: 32, right: 32),
                    child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        maxLines: 1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          hintText: 'Enter username here ...',
                          hintStyle:
                              TextStyle(fontSize: 16, color: Colors.grey[500]),
                          prefixIcon: Icon(Icons.account_circle),
                          contentPadding: EdgeInsets.zero,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16, left: 32, right: 32),
                    child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        maxLines: 1,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Colors.grey[200],
                          hintText: 'Enter password here ...',
                          hintStyle:
                              TextStyle(fontSize: 16, color: Colors.grey[500]),
                          prefixIcon: Icon(Icons.lock),
                          contentPadding: EdgeInsets.zero,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 64, left: 32, right: 32),
                    child: SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.brown),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide.none))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Dashboard()));
                        },
                        child: Text(
                          'Signin',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account yet?',
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                        SizedBox(width: 10),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Signup()));
                            },
                            child: Text(
                              'Signup',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.brown[800],
                                  decoration: TextDecoration.underline),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )));
  }
}

showAlertDialog(BuildContext context) {
  // set up the button
  Widget okButton = TextButton(
    child: Text("OK"),
    onPressed: () {},
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("My title"),
    content: Text("This is my message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
