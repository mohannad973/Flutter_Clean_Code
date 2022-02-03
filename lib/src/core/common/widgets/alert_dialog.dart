import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'button_view.dart';
import 'text_view.dart';

class AlertDailogView extends StatelessWidget {
  final String content;

  AlertDailogView({required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: TextView(text: content),
      actions: <Widget>[
        ButtonView(
          title: "OK".tr(),
          buttonType: ButtonType.soldButton,
          onClick: () {
            context.router.pop();
          },
        )
      ],
    );
  }
}
