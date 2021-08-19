import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String firstName = "Edidiong";
  final String lastName = "Ekpo";

  printName() => print(firstName + " " + lastName);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: UserInput());
  }
}

class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  _UserInputState createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  String? result;

  final textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Input App'),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Something',
                ),
                controller: textController,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = textController.text;
                  });
                },
                child: Text('Show Text'),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text('$result'),
              )
            ],
          ),
        ));
  }
}
