import 'package:flutter/material.dart';

import 'package:willow_care/src/features/profile/presentation/widgets/section_label.dart';
class WorkInfoTab extends StatelessWidget {
  const WorkInfoTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
         SectionLabel(
            icon: "assets/images/icons/info-icon.svg",
            title: "Clinic Information"),
         SizedBox(
          height: 16,
        ),
         SectionLabel(
            icon: "assets/images/icons/consultion-icon.svg",
            title: "Consultation"),
         SizedBox(
          height: 16,
        ),
         SectionLabel(
            icon: "assets/images/icons/info-icon.svg",
            title: "Assistant name ,number"),
         SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
