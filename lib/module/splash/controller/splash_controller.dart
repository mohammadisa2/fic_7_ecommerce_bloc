import 'package:fic_7_ecommerce/bloc/login/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashController extends State<SplashView> {
  static late SplashController instance;
  late SplashView view;

  @override
  void initState() {
    instance = this;
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => LoginBloc(),
                  child: const LoginView(),
                )),
      );
    });
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
