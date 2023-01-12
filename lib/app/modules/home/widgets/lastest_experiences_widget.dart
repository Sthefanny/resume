import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../generated/l10n.dart';
import '../../../common/configs/color_config.dart';
import '../../../common/configs/text_style_config.dart';

class LastestExperiences extends StatelessWidget {
  const LastestExperiences({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildLine(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                _buildIcon(),
                _buildTitle(context),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 15.sp, bottom: 20.sp),
              child: _buildExperiences(context),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLine() {
    return Positioned(
      left: 15.sp,
      top: 30.sp,
      bottom: 0,
      child: Container(
        width: 2.sp,
        color: ColorConfig.grey,
      ),
    );
  }

  Widget _buildIcon() {
    return Padding(
      padding: EdgeInsets.only(right: 8.sp),
      child: FaIcon(FontAwesomeIcons.briefcase, color: ColorConfig.background, size: 37.sp),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      S.of(context).lastestExperiences,
      style: TextStyleConfig.title,
    );
  }

  Widget _buildCircle() {
    return Padding(
      padding: EdgeInsets.only(left: 10.sp, top: 5.sp),
      child: FaIcon(FontAwesomeIcons.solidCircle, color: ColorConfig.background, size: 13.sp),
    );
  }

  Widget _buildExperiences(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildExperience(
          initialDate: 'Jul/19',
          finalDate: 'Presente',
          jobTitle: 'Flutter Developer',
          company: 'Freelancer',
          description: 'I have been working as a freelancer for 1 year, developing mobile applications for Android and iOS using Flutter.',
        ),
        _buildExperience(
          initialDate: 'Fev/19',
          finalDate: 'Jul/19',
          jobTitle: 'Flutter Developer',
          company: 'Freelancer',
          description: 'I have been working as a freelancer for 1 year, developing mobile applications for Android and iOS using Flutter.',
        ),
      ],
    );
  }

  Widget _buildExperience({required String initialDate, required String finalDate, required String jobTitle, required String company, required String description}) {
    return Transform.translate(
      offset: Offset(-80.sp, 0),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.sp),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDates(initialDate: initialDate, finalDate: finalDate),
            _buildCircle(),
            Padding(
              padding: EdgeInsets.only(left: 20.sp),
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
    return SizedBox(
      width: 80.sp,
      child: Text(
        '$initialDate - $finalDate',
        style: TextStyleConfig.dateBody,
      ),
    );
  }

  Widget _buildJobTitle(String jobTitle) {
    return Text(jobTitle, style: TextStyleConfig.infoTitle);
  }

  Widget _buildCompany(String company) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.sp),
      child: Text(company, style: TextStyleConfig.infoBody.copyWith(fontWeight: FontWeight.w400)),
    );
  }

  Widget _buildDescription(String description) {
    return SizedBox(
      width: 500.sp,
      child: Text(
        description,
        style: TextStyleConfig.infoBody,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
