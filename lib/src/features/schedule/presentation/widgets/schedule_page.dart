import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:willow_care/src/core/common/widgets/tab_bar_widget.dart';
import 'package:willow_care/src/core/common/widgets/text_view.dart';
import 'package:willow_care/src/core/constants/const.dart';
import 'package:willow_care/src/features/schedule/domain/entities/accepted_schedule_list_entity.dart';
import 'package:willow_care/src/features/schedule/presentation/logic/schedule_cubit.dart';
import 'package:willow_care/src/features/schedule/presentation/logic/schedule_state.dart';
import 'package:willow_care/src/features/schedule/presentation/widgets/accepted_tab.dart';

import '../../../../core/common/data/models/error_model/error_model.dart';
import '../../../../core/common/widgets/error_view.dart';

import '../../../../core/common/widgets/loading_view.dart';
import '../../../../injection.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => serviceLocator<ScheduleCubit>(),
      child: Scaffold(
        extendBody: true,
        body: SafeArea(
          child: Center(
            child: BlocBuilder<ScheduleCubit, ScheduleState>(
              builder: (BuildContext context, state) {
                return state.maybeWhen(orElse: () {
                  return Container();
                }, successfullyRetrievedData:
                    (AcceptedScheduleListEntity acceptedList) {
                  return Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(14)),
                            color: kTabContainerColor,
                          ),
                          child: TabBarWidget(
                            tabController: _tabController,
                            firstTabTitle: 'Upcoming',
                            secondTabTitle: 'Accepted',
                          ),
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            // first tab bar view widget
                            Center(
                              child: Image.asset(
                                "assets/images/calendar_image.png",
                                height: 260,
                                width: 260,
                              ),
                            ),

                            // second tab bar view widget
                            AcceptedTab(
                              acceptedScheduleListEntity: acceptedList,
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }, error: (ErrorModel? errorModel) {
                  final String errorMessage = errorModel?.error?.message ?? "";

                  return ErrorView(
                    error: errorMessage,
                    onRefresh: () {
                      BlocProvider.of<ScheduleCubit>(context).getData();
                    },
                    logoSize: 150,
                  );
                }, loading: () {
                  return Center(
                    child: LoadingView(),
                  );
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
