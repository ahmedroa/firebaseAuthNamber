// ignore_for_file: deprecated_member_use

import 'package:chatapp/bloc/bloc_cubit.dart';
import 'package:chatapp/constnats/strings.dart';
import 'package:chatapp/layout/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class MapScreen extends StatelessWidget {
  final phoneNumber;
  const MapScreen({super.key, this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    PhoneAuthCubit phoneAuthCubit = PhoneAuthCubit();
    return Container(
      child: BlocProvider<PhoneAuthCubit>(
        create: (context) => phoneAuthCubit,
        child: ElevatedButton(
          onPressed: () {
            phoneAuthCubit.logOut();
            navigateAndFinish(context, LoginScreen());
          },
          child: Text(
            'Next',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(110, 50),
            primary: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ),
    );
  }
}
