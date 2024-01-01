import 'package:flutter/material.dart';
import 'package:fic_7_ecommerce/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../bloc/logout/logout_bloc.dart';
import '../../../data/datasources/auth_local_datasource.dart';
import '../controller/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  Widget build(context, ProfileController controller) {
    controller.view = this;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5), // Warna bayangan
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: FutureBuilder(
                    future: AuthLocalDatasource().getUser(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListTile(
                          leading: Container(
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          title: Text(
                            "${snapshot.data?.name}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            "${snapshot.data?.role}",
                            style: const TextStyle(
                              color: Colors.black45,
                              fontSize: 14,
                            ),
                          ),
                        );
                      } else {
                        return ListTile(
                          leading: Container(
                            height: 55,
                            width: 55,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(12.0),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                                  ),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          title: const Text(
                            "John",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: const Text(
                            "isa@gmail.com",
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 14,
                            ),
                          ),
                        );
                      }
                    },
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black26,
                      width: 2.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      BlocProvider(
                        create: (context) => LogoutBloc(),
                        child: BlocConsumer<LogoutBloc, LogoutState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              loaded: () {
                                AuthLocalDatasource().removeAuthData();
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: (context) {
                                  return const SplashView();
                                }));
                              },
                              error: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text("Logout Error")));
                              },
                            );
                          },
                          builder: (context, state) {
                            return state.maybeWhen(
                              orElse: () {
                                return ListTile(
                                  leading: const Icon(Icons.logout),
                                  minLeadingWidth: 0.0,
                                  title: const Text("Logout"),
                                  trailing: const Icon(
                                    Icons.chevron_right,
                                    size: 24.0,
                                  ),
                                  onTap: () {
                                    context
                                        .read<LogoutBloc>()
                                        .add(const LogoutEvent.logout());
                                  },
                                );
                              },
                              loaded: () {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                            );
                          },
                        ),
                      ),
                      const ListTile(
                        leading: Icon(Icons.lock),
                        minLeadingWidth: 0.0,
                        title: Text("Change Password"),
                        trailing: Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ),
                      const ListTile(
                        leading: Icon(Icons.home_outlined),
                        minLeadingWidth: 0.0,
                        title: Text("Shipping Address"),
                        trailing: Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ),
                      const ListTile(
                        leading: Icon(Icons.card_giftcard_rounded),
                        minLeadingWidth: 0.0,
                        title: Text("My Order"),
                        trailing: Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ),
                      const ListTile(
                        leading: Icon(Icons.favorite_border),
                        minLeadingWidth: 0.0,
                        title: Text("My Favorite"),
                        trailing: Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 235.0,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black26,
                      width: 2.0,
                    ),
                  ),
                  child: const Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.question_answer_outlined),
                        minLeadingWidth: 0.0,
                        title: Text("Faqs"),
                        trailing: Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.shield_outlined),
                        minLeadingWidth: 0.0,
                        title: Text("Privacy Policy"),
                        trailing: Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.handshake),
                        minLeadingWidth: 0.0,
                        title: Text("Terms and conditions"),
                        trailing: Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.call),
                        minLeadingWidth: 0.0,
                        title: Text("Customer Care"),
                        trailing: Icon(
                          Icons.chevron_right,
                          size: 24.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<ProfileView> createState() => ProfileController();
}
