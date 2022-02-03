import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:willow_care/src/core/common/widgets/button_view.dart';
import 'package:willow_care/src/core/common/widgets/card_view.dart';
import 'package:willow_care/src/core/common/widgets/text_view.dart';

class SectionLabel extends StatelessWidget {
  final String icon;
  final String title;

  const SectionLabel({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     CardView(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 16.0,
          ),
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                   Container(
                     height: 32,
                     width: 32,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Theme.of(context).primaryColorLight,
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(6.0),
                       child: SvgPicture.asset(
                       icon,

                  ),
                     ),
                   ),
                  const SizedBox(
                    width: 20,
                  ),
                  TextView(
                    text: title,
                    style: Theme.of(context)
                        .textTheme
                        .headline2,
                  ),
                ],
              ),
              ButtonView(
                buttonType: ButtonType.soldButton,
                textColor: Theme.of(context)
                    .colorScheme
                    .secondary,
                onClick: () {},
                title: "edit",
                buttonStyle: ButtonStyle(
                  elevation:  MaterialStateProperty.all(0),
                  shape: MaterialStateProperty.all<
                      RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(14.0),
                      )),
                  backgroundColor:
                  MaterialStateProperty.all(
                      Theme.of(context)
                          .primaryColorLight),
                ),
              ),
            ],
          ),
        ));
  }
}
