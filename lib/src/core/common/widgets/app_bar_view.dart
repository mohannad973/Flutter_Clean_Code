import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:willow_care/src/core/constants/const.dart';

import 'button_view.dart';
import 'logo_view.dart';
import 'text_view.dart';

class AppBarView extends StatelessWidget {
  final String appBarTitle;
  final Widget? customeOption;


  const AppBarView({
    Key? key,
    required this.appBarTitle,
    this.customeOption,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(

      leading: const Icon(Icons.view_headline,color: kBlueColorDark,),
      leadingWidth: 80,
      titleSpacing: 0.0,
      title: Center(
        child: TextView(
          text: appBarTitle,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: SvgPicture.asset('assets/images/icons/settings-icon.svg'),
        ),
      ],
    );
  }
}
