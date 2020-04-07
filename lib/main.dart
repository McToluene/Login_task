import 'package:flutter/material.dart';

void main() => runApp(MyApp());

Widget formSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: 'Username',
                      suffixIcon: Icon(
                        Icons.account_box,
                        color: Colors.deepPurple,
                      ),
                      border: OutlineInputBorder()),
                )),
            TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  hintText: "Password",
                  suffixIcon: Icon(
                    Icons.lock,
                    color: Colors.deepPurple,
                  ),
                  border: OutlineInputBorder()),
            )
          ]),
        )
      ],
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColorDark;

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 35),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.deepPurple,
                    child: MaterialButton(
                      minWidth: double.infinity,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {},
                      child: Text(
                        'LOGIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(8),
                  color: color,
                  child: MaterialButton(
                    minWidth: double.infinity,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () {},
                    child: Text(
                      'SIGN UP',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );

    return MaterialApp(
        title: 'Login Task',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Image.asset(
                'images/lock.png',
                height: 100,
              ),
              formSection,
              buttonSection
            ],
          ),
        )));
  }
}
