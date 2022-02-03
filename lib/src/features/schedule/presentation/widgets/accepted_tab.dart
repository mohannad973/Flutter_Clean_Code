import 'package:flutter/material.dart';
import 'package:willow_care/src/core/common/widgets/text_view.dart';
import 'package:willow_care/src/features/schedule/domain/entities/accepted_schedule_list_entity.dart';
import 'package:willow_care/src/features/schedule/presentation/widgets/event_card.dart';

class AcceptedTab extends StatelessWidget {
  final AcceptedScheduleListEntity acceptedScheduleListEntity;

  const AcceptedTab({
    Key? key,
    required this.acceptedScheduleListEntity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 16,
        ),
        Container(
            color: Colors.white,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                top: 12,
                bottom: 12,
              ),
              child: TextView(
                text: "This Week",
                style: Theme.of(context).textTheme.headline3,
              ),
            )),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemCount: acceptedScheduleListEntity.acceptedList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: EventCard(
                    acceptedSchedule:
                        acceptedScheduleListEntity.acceptedList[index],
                  ),
                );
              }),
        )
      ],
    );
  }
}
