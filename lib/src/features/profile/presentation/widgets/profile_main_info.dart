import 'package:flutter/material.dart';
import 'package:willow_care/src/core/common/widgets/image_view.dart';
import 'package:willow_care/src/core/common/widgets/text_view.dart';
import 'package:willow_care/src/features/profile/domain/entities/profile_entity.dart';

class ProfileMainInfo extends StatelessWidget {
  final ProfileEntity profileEntity;

  const ProfileMainInfo({
    Key? key,
    required this.profileEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextView(
                  text: profileEntity.name ?? "",
                  style: Theme.of(context).textTheme.headline1,
                ),
                TextView(
                  text: profileEntity.description ?? "",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            Container(
              height: 116,
              width: 108,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
              ),
              child: ImageBuilder(
                imageUrl: profileEntity.image ?? "",
              )
            )
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  TextView(
                    text: "Profile View",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextView(
                    text: "${profileEntity.profileViews}+",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ],
              ),
              const VerticalDivider(
                thickness: 1,
              ),
              Column(
                children: [
                  TextView(
                    text: "Patients",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextView(
                    text: "${profileEntity.patientsNumber}+",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ],
              ),
              const VerticalDivider(
                thickness: 1,
              ),
              Column(
                children: [
                  TextView(
                    text: "Experience",
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextView(
                    text: "${profileEntity.experience} years",
                    style: Theme.of(context).textTheme.headline2!.copyWith(
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
