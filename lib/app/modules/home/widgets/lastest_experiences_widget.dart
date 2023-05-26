import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../l10n/generated/l10n.dart';
import '../../../common/configs/color_config.dart';
import '../../../common/configs/text_style_config.dart';
import '../home_store.dart';

class LastestExperiences extends StatefulWidget {
  const LastestExperiences({super.key});

  @override
  State<LastestExperiences> createState() => _LastestExperiencesState();
}

class _LastestExperiencesState extends State<LastestExperiences> {
  late final HomeStore _store;

  @override
  void initState() {
    super.initState();
    _store = Modular.get<HomeStore>()..loadExperiences();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildLine(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildIconAndTitle(context),
            Container(
              margin: EdgeInsets.only(top: 15.h, bottom: 20.h),
              child: _buildExperiences(context),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLine() {
    return Positioned(
      left: 28.w,
      top: 17.h,
      bottom: 0,
      child: Container(
        width: 1.sp,
        color: ColorConfig.grey,
      ),
    );
  }

  Widget _buildIconAndTitle(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Row(
        children: [
          _buildIcon(),
          _buildTitle(context),
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return Padding(
      padding: EdgeInsets.only(right: 4.w),
      child: FaIcon(FontAwesomeIcons.briefcase, color: ColorConfig.background, size: 16.w),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      S.of(context).lastestExperiences,
      style: TextStyleConfig.title,
    );
  }

  Widget _buildCircle() {
    return Transform.translate(
      offset: Offset(-9.5.w, 3.h),
      child: FaIcon(FontAwesomeIcons.solidCircle, color: ColorConfig.background, size: 6.w),
    );
  }

  Widget _buildExperiences(BuildContext context) {
    return Observer(
      builder: (_) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ..._store.experiences.map(
              (experience) => _buildExperience(
                initialDate: experience.initialDate,
                finalDate: experience.finalDate,
                jobTitle: experience.jobTitle,
                company: experience.company,
                description: experience.description,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildExperience({required String initialDate, required String finalDate, required String jobTitle, required String company, required String description}) {
    return Transform.translate(
      offset: Offset(-15.w, 0),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDates(initialDate: initialDate, finalDate: finalDate),
            _buildCircle(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildJobTitle(jobTitle),
                  _buildCompany(company),
                  _buildDescription(description),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDates({required String initialDate, required String finalDate}) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: SizedBox(
        width: 40.w,
        child: Text(
          '$initialDate - $finalDate',
          style: TextStyleConfig.dateBody,
        ),
      ),
    );
  }

  Widget _buildJobTitle(String jobTitle) {
    return Text(jobTitle, style: TextStyleConfig.infoTitle);
  }

  Widget _buildCompany(String company) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.h),
      child: Text(company, style: TextStyleConfig.infoBody.copyWith(fontWeight: FontWeight.w500)),
    );
  }

  Widget _buildDescription(String description) {
    return Text(
      description,
      style: TextStyleConfig.infoBody.copyWith(fontSize: 10.sp),
      textAlign: TextAlign.justify,
    );
  }
}
