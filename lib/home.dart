import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int no = 3;
    String name = "asjal";
    var n = "three";

    return Scaffold(
      appBar: AppBar(
        title: Text("catalog app"),
      ),
      body: Center(
        child: Container(
          child: Text("hello $no $n " + name),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
