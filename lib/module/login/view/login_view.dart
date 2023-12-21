import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../../../bloc/login/login_bloc.dart';
import '../../../bloc/register/register_bloc.dart';
import '../../../core/text_field/q_text_field.dart';
import '../../../data/datasources/auth_local_datasource.dart';
import '../../../data/models/request/auth_request_model.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
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
                height: MediaQuery.of(context).size.height * 0.8,
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
                      SizedBox(
                        height: 20,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: const Text(
                              "Welcome!",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                            width: MediaQuery.of(context).size.width,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: const Text(
                              "Please login or register to continue our app",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                        width: MediaQuery.of(context).size.width,
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
                      const Spacer(),
                      BlocListener<LoginBloc, LoginState>(
                        listener: (context, state) {
                          state.maybeWhen(
                            orElse: () {},
                            loaded: (data) {
                              AuthLocalDatasource().saveAuthData(data);
                              if (data.user.role == 'user') {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const MainNavigationView();
                                }));
                              } else {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const MainNavigationSellerView();
                                }));
                              }
                            },
                            error: (message) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(message),
                                ),
                              );
                            },
                          );
                        },
                        child: BlocBuilder<LoginBloc, LoginState>(
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
                                      final requestModel = AuthRequestModel(
                                          email: emailController.text,
                                          password: passwordController.text);
                                      context
                                          .read<LoginBloc>()
                                          .add(LoginEvent.login(requestModel));
                                    },
                                    child: const Text("Login"),
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
                      SizedBox(
                        height: 20,
                        width: MediaQuery.of(context).size.width,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.black,
                            side: const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BlocProvider(
                                create: (context) => RegisterBloc(),
                                child: const RegisterView(),
                              ),
                            ),
                          ),
                          child: const Text("Register"),
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
  State<LoginView> createState() => LoginController();
}
