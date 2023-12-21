import 'package:fic_7_ecommerce/data/models/request/register_request_model.dart';
import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../../../bloc/register/register_bloc.dart';
import '../../../core/text_field/q_text_field.dart';
import '../../../data/datasources/auth_local_datasource.dart';
import '../controller/register_controller.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    TextEditingController firstnameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController passwordConfirmationController =
        TextEditingController();
    controller.view = this;
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Positioned(
              left: -60,
              bottom: -90,
              child: Lottie.asset(
                "assets/animations/bubble-1.json",
                width: 300,
                height: 300,
              ),
            ),
            Positioned(
              right: -60,
              top: -90,
              child: Lottie.asset(
                "assets/animations/bubble-1.json",
                width: 300,
                height: 300,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.1,
              right: 0,
              left: 0,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                height: MediaQuery.of(context).size.height * 0.81,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  // color: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.fill,
                      ),
                      const Spacer(),
                      QTextField(
                        label: "Name",
                        onChanged: (text) {
                          firstnameController.text = text;
                        },
                        suffixIcon: Icons.text_fields,
                      ),
                      QTextField(
                        label: "Email",
                        onChanged: (text) {
                          emailController.text = text;
                        },
                        suffixIcon: Icons.email,
                      ),
                      QTextField(
                        obscure: true,
                        label: "Password",
                        onChanged: (text) {
                          passwordController.text = text;
                        },
                        suffixIcon: Icons.remove_red_eye,
                      ),
                      QTextField(
                        obscure: true,
                        label: "Re-type your Password",
                        onChanged: (text) {
                          passwordConfirmationController.text = text;
                        },
                        suffixIcon: Icons.remove_red_eye,
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 20,
                        width: MediaQuery.of(context).size.width,
                      ),
                      BlocListener<RegisterBloc, RegisterState>(
                        listener: (context, state) {
                          state.maybeWhen(
                            orElse: () {},
                            loaded: (data) {
                              AuthLocalDatasource().saveAuthData(data);
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MainNavigationView(),
                                ),
                              );
                            },
                            error: (message) {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(
                                content: Text(message),
                              ));
                            },
                          );
                        },
                        child: BlocBuilder<RegisterBloc, RegisterState>(
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () {
                                return SizedBox(
                                  width: MediaQuery.of(context).size.width,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.black,
                                      side: const BorderSide(
                                        color: Colors.black,
                                      ),
                                    ),
                                    onPressed: () {
                                      final model = RegisterRequestModel(
                                          email: emailController.text,
                                          name: firstnameController.text,
                                          password: passwordController.text);
                                      context
                                          .read<RegisterBloc>()
                                          .add(RegisterEvent.register(model));
                                    },
                                    child: const Text("Register"),
                                  ),
                                );
                              },
                              loading: () {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
