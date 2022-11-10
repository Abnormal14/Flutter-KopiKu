import 'package:flutter/material.dart';
import 'login.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Colors.brown[800],
              ),
        ),
        home: Scaffold(
            body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(32),
                color: Colors.white,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 32),
                        child: Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey[800]),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Please fill in and complete the form below',
                          style: TextStyle(
                              fontFamily: 'roboto',
                              color: Colors.grey[500],
                              fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 64),
                        child: Text(
                          'First Name',
                          style: TextStyle(
                              fontFamily: 'roboto',
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
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
                                hintText: 'Enter your first name here ...',
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Colors.grey[500]))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Last Name',
                          style: TextStyle(
                              fontFamily: 'roboto',
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
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
                                hintText: 'Enter your last name here ...',
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Colors.grey[500]))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Email',
                          style: TextStyle(
                              fontFamily: 'roboto',
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
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
                                hintText: 'Enter your email here ...',
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Colors.grey[500]))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Phone',
                          style: TextStyle(
                              fontFamily: 'roboto',
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
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
                                hintText: 'Enter your phone here ...',
                                hintStyle: TextStyle(
                                    fontSize: 16, color: Colors.grey[500]))),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Date Birth',
                          style: TextStyle(
                              fontFamily: 'roboto',
                              color: Colors.black,
                              fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 16),
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
                              hintText: 'Choose birth date',
                              hintStyle: TextStyle(
                                  fontSize: 16, color: Colors.grey[500]),
                              suffixIcon: Icon(Icons.date_range),
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 64),
                        child: SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.brown),
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
                                          Login()));
                            },
                            child: Text(
                              'Register',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 32),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account yet?',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            SizedBox(width: 10),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                  );
                                },
                                child: Text(
                                  'Signin',
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
              )
            ],
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
