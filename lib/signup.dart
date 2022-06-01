import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'main.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  static const String _title = 'LOGO';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          title: const Text(_title,
              style: TextStyle(
                color: Color.fromARGB(255, 18, 64, 38),
                fontWeight: FontWeight.bold,
                fontSize: 35,
              )),
          elevation: 0,
        ),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool valuefirst = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: const Text(
                  'Join Us',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                )),
            Container(
              alignment: Alignment.center,
              child: Row(
                children: <Widget>[
                  const Text('or'),
                  TextButton(
                    child: const Text(
                      'Sign In',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                    },
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 41, 50, 65),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 41, 50, 65),
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 41, 50, 65),
                      ),
                    ),
                    labelText: 'Email or Phone',
                    labelStyle: TextStyle(fontStyle: FontStyle.italic)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 41, 50, 65),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 41, 50, 65),
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 41, 50, 65),
                      ),
                    ),
                    labelText: 'Password',
                    labelStyle: TextStyle(fontStyle: FontStyle.italic)),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 41, 50, 65),
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 41, 50, 65),
                      ),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 41, 50, 65),
                      ),
                    ),
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(fontStyle: FontStyle.italic)),
              ),
            ),
            Container(
                height: 75,
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: ElevatedButton(
                  child: const Text('Proceed'),
                  style: ElevatedButton.styleFrom(
                      onPrimary: const Color.fromARGB(255, 255, 255, 255),
                      primary: const Color.fromARGB(255, 41, 50, 65),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () {
                    print(nameController.text);
                    print(passwordController.text);
                  },
                )),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
              child: const Text(
                'or',
              ),
            ),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                height: 55,
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      onPrimary: const Color.fromARGB(255, 0, 0, 0),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Row(
                    children: const <Widget>[
                      Icon(LineIcons.googlePlus,
                          color: Color.fromARGB(255, 207, 32, 32)),
                      Text('   Continue with Google'),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  onPressed: () {},
                )),
            Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                height: 55,
                margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      onPrimary: const Color.fromARGB(255, 0, 0, 0),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Row(
                    children: const <Widget>[
                      Icon(Icons.apple),
                      Text('   Continue with Apple'),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  onPressed: () {},
                )),
          ],
        ));
  }
}
