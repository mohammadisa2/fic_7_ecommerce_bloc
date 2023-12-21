import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import '../view/intro3_view.dart';

class Intro3Controller extends State<Intro3View> {
  static late Intro3Controller instance;
  late Intro3View view;

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
