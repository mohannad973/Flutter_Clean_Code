import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:willow_care/src/core/common/widgets/tab_bar_widget.dart';
import 'package:willow_care/src/core/common/widgets/text_view.dart';
import 'package:willow_care/src/features/profile/domain/entities/profile_entity.dart';
import 'package:willow_care/src/features/profile/presentation/logic/profile_cubit.dart';
import 'package:willow_care/src/features/profile/presentation/logic/profile_state.dart';
import 'package:willow_care/src/features/profile/presentation/widgets/profile_main_info.dart';

import 'package:willow_care/src/features/profile/presentation/widgets/work_info_tab.dart';

import '../../../../core/common/widgets/error_view.dart';
import '../../../../core/common/widgets/loading_view.dart';

import 'doctor_info_tab.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileBodyState();
}

class _ProfileBodyState extends State<ProfileBody>
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
    return RefreshIndicator(
      onRefresh: () {
        return Future.delayed(const Duration(seconds: 1), () {
          BlocProvider.of<ProfileCubit>(context).getData();
        });
      },
      child: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) => state.maybeWhen(
          orElse: () {
            return Container();
          },
          successfullyRetrievedData: (
            ProfileEntity profileEntity,
          ) {
            return SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                      width: double.infinity,
                      height: 120,
                      child: Image.asset(
                        "assets/images/top_bar_curved_image.png",
                        fit: BoxFit.fill,
                      )),
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 70,
                            ),
                            ProfileMainInfo(
                              profileEntity: profileEntity,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            TabBarWidget(
                                firstTabTitle: "Doctor Info",
                                secondTabTitle: "Work Info",
                                tabController: _tabController),
                            const SizedBox(
                              height: 24,
                            ),
                            SizedBox(
                              height: 700,
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  // first tab bar view widget
                                  DoctorInfoTab(
                                    profileEntity: profileEntity,
                                  ),

                                  // second tab bar view widget
                                  const WorkInfoTab(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          error: (error) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 100.0),
              child: ErrorView(
                error: error?.error?.message ?? "",
                onRefresh: () {
                  BlocProvider.of<ProfileCubit>(context).getData();
                },
                logoSize: 160,
              ),
            );
          },
          loading: () {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 170.0),
              child: LoadingView(),
            );
          },
        ),
      ),
    );
  }
}
