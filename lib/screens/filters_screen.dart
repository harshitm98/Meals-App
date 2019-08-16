import 'package:flutter/material.dart';

class FiltersScreen extends StatelessWidget {

  static const routeName = "/filter-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter Screen"),
      ),
      body: Center(
        child: Text("Filter Screen"),
      ),
    );
  }
}
