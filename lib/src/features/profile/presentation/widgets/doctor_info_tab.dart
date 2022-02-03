import 'package:flutter/material.dart';
import 'package:willow_care/src/core/common/widgets/detail_dialog.dart';
import 'package:willow_care/src/core/common/widgets/image_view.dart';
import 'package:willow_care/src/core/common/widgets/text_view.dart';
import 'package:willow_care/src/features/profile/domain/entities/profile_entity.dart';
import 'package:willow_care/src/features/profile/presentation/widgets/section_label.dart';

class DoctorInfoTab extends StatelessWidget {
  final ProfileEntity profileEntity;

  const DoctorInfoTab({
    Key? key,
    required this.profileEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SectionLabel(
            icon: "assets/images/icons/info-icon.svg",
            title: "Basic Information"),
        const SizedBox(
          height: 16,
        ),
        TextView(
          text: "${profileEntity.basicInfo}",
          style: Theme.of(context).textTheme.headline3!.copyWith(height: 1.2),
          textAlignment: TextAlign.left,
        ),
        const SizedBox(
          height: 24,
        ),
        const SectionLabel(
            icon: "assets/images/icons/certificate-icon.svg",
            title: "Certificates"),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 100,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: profileEntity.certificates?.length ?? 0,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: (){
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) =>
                        // PinDetailDialog(salePoint: salePoints.showRoom!),
                        DetailDialog(imagePath: profileEntity.certificates?[index],
                          title: "Medical certificate from doctor",
                          detail: "A medical certificate or doctor's certificate is a written statement from a physician or another medically qualified health care provider which attests to the result of a medical examination of a patient. It can serve as a sick note (documentation that an employee is unfit for work) or evidence of a health condition.",
                        ),
                      );
                    },
                    child: SizedBox(
                        width: 160,
                        height: 100,
                        child: ImageBuilder(
                          imageUrl: profileEntity.certificates?[index] ?? "",
                        )),
                  ),
                );
              }),
        ),
        const SizedBox(
          height: 24,
        ),
        const SectionLabel(
            icon: "assets/images/icons/insurance-icon.svg",
            title: "Insurance companies"),
        const SizedBox(
          height: 16,
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextView(
                text: "Romania Company",
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
                height: 16,
              ),
              TextView(
                text: "Romania Co",
                style: Theme.of(context).textTheme.headline3,
              ),
            ],
          ),
        )
      ],
    );
  }
}
