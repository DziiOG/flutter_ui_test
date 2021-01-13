import 'package:flutter/material.dart';
import './WIdgets/header.dart';
import './WIdgets/selectors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0.0, 0, 0),
        child: Center(
          child: Container(
            child: Center(
              child: Container(
                height: (MediaQuery.of(context).size.height),
                width: (MediaQuery.of(context).size.width),
                child: Column(
                  children: <Widget>[HeaderContainer(), SelectorContainer()],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
