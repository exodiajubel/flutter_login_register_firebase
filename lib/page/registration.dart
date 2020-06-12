import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutorial/bloc/registration_bloc.dart';

class Registration extends StatefulWidget {
  Registration({Key key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Registration",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocConsumer<RegistrationBloc, RegistrationState>(
        listener: (context, state) {},
        builder: (context, state) {
          return buildRegistrationInitial(context);
        },
      ),
    );
  }

  Widget buildRegistrationInitial(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Text("Username"),
          ),
          Container(
            width: 200,
            child: TextField(
              decoration: InputDecoration(hintText: "Owen"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Text("Password"),
          ),
          Container(
            width: 200,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: "Password"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Text("Phone number"),
          ),
          Container(
            width: 200,
            child: TextField(
              decoration: InputDecoration(hintText: "0932"),
            ),
          ),
          Container(
            height: 47,
            width: 200,
            margin: EdgeInsets.only(
              top: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue,
            ),
            child: FlatButton(
              onPressed: () {},
              child: Container(
                child: Text(
                  "Register",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
