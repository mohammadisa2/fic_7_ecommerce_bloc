import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../view/intro2_view.dart';

class Intro2Controller extends State<Intro2View> {
  static late Intro2Controller instance;
  late Intro2View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
