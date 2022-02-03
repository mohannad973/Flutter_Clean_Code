import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:willow_care/src/core/common/widgets/button_view.dart';
import 'package:willow_care/src/core/common/widgets/card_view.dart';
import 'package:willow_care/src/core/common/widgets/circle_image_view.dart';
import 'package:willow_care/src/core/common/widgets/text_view.dart';
import 'package:willow_care/src/core/utils/helpers/date_formatter.dart';
import 'package:willow_care/src/features/schedule/domain/entities/accepted_schedule_entity.dart';

class EventCard extends StatelessWidget {
  final AcceptedScheduleEntity acceptedSchedule;

  const EventCard({
    Key? key,
    required this.acceptedSchedule,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        // height: 280,
        width: 400,
        child: CardView(

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextView(
                          text: acceptedSchedule.name ?? "",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextView(
                          text: acceptedSchedule.jobDescription ?? "",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    CircleImageView(
                      image: acceptedSchedule.image ?? "",
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Divider(
                thickness: 1.2,
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 52.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.calendar_today),
                        const SizedBox(
                          width: 5,
                        ),
                        TextView(
                          text: formatDate(DateTime.now()),
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.lens,
                          size: 8,
                          color: acceptedSchedule.status == 1
                              ? const Color(0xff70CC40)
                              : Colors.red,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        TextView(
                          text: acceptedSchedule.status == 1
                              ? "Confirmed"
                              : "Declined",
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  bottom: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonView(
                      buttonType: ButtonType.soldButton,
                      onClick: () {
                        context.router.pushNamed('profilePage');
                      },
                      title: "Start examination",
                      buttonStyle: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ))),
                    ),
                    ButtonView(
                      buttonType: ButtonType.soldButton,
                      textColor: Theme.of(context).colorScheme.secondary,
                      onClick: () {},
                      title: "Reschedule",
                      buttonStyle: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                        backgroundColor: MaterialStateProperty.all(
                            Theme.of(context).primaryColorLight),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
