import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:willow_care/src/core/common/widgets/app_bar_view.dart';
import 'package:willow_care/src/features/profile/presentation/logic/profile_cubit.dart';

import '../../../../injection.dart';
import 'profile_body.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size(double.infinity, 60),
          child: AppBar(
            backgroundColor: Color(0xFF0F5699),
            leading: const AutoBackButton(
              color: Colors.white,
            ),
            leadingWidth: 80,
            titleSpacing: 0.0,
            actions: const [
              Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.0, right: 24),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              )
            ],
            elevation: 0,
          )),
      body: BlocProvider(
        create: (BuildContext context) => serviceLocator<ProfileCubit>(),
        child: const ProfileBody(),
      ),
    );
  }
}
