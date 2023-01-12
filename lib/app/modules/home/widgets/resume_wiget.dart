import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'languages_widget.dart';
import 'lastest_experiences_widget.dart';
import 'personal_info_widget.dart';
import 'skills_widget.dart';
import 'summary_widget.dart';
import 'title_widget.dart';

class ResumeWidget extends StatelessWidget {
  const ResumeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.sp),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SizedBox(
          width: 1100.sp,
          height: 1324.sp,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.sp),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildLeft(),
                  _buildRight(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLeft() {
    return SizedBox(
      width: 620.sp,
      child: Column(
        children: [
          TitleWidget(),
          Padding(
            padding: EdgeInsets.only(left: 0.055.sw, top: 10.sp),
            child: Column(
              children: [
                SummaryWidget(),
                LastestExperiences(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRight() {
    return SizedBox(
      width: 340.sp,
      child: Column(
        children: [
          PersonalInfoWidget(),
          Container(margin: EdgeInsets.symmetric(vertical: 10.sp), child: SkillsWidget()),
          LanguagesWidget(),
        ],
      ),
    );
  }
}
