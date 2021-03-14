import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/pages/home/home_controller.dart';

class OtherPage extends StatefulWidget {
  final String? text;

  const OtherPage({Key? key, this.text}) : super(key: key);
  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    final homeController = Modular.get<HomeController>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Other'),
      ),
      body: Center(
        child: Text(homeController.text),
        //child: Text('${widget.text}'),
      ),
    );
  }
}
