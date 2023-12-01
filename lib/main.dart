import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taskone/bloc/login.cubit.dart';
import 'package:taskone/bloc/login.state.dart';
import 'package:taskone/firebase_options.dart';
import 'package:taskone/login.dart';
import 'package:taskone/profile.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(initialState()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: login_screen(),
      ),
    );
  }
}
