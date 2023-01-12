import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../generated/l10n.dart';
import '../../../common/configs/color_config.dart';
import '../../../common/configs/text_style_config.dart';

class PersonalInfoWidget extends StatelessWidget {
  const PersonalInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _buildIcon(),
              _buildTitle(context),
            ],
          ),
        ),
        _buildInfos(context),
      ],
    );
  }

  Widget _buildIcon() {
    return Padding(
      padding: EdgeInsets.only(right: 8.sp),
      child: FaIcon(FontAwesomeIcons.solidUser, color: ColorConfig.background, size: 28.sp),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      S.of(context).personalInfo,
      style: TextStyleConfig.title,
    );
  }

  Widget _buildInfos(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInfo(title: S.of(context).addressTitle, value: S.of(context).address),
        _buildInfo(title: S.of(context).phoneTitle, value: S.of(context).phone),
        _buildInfo(title: S.of(context).emailTitle, value: S.of(context).email),
        _buildInfo(title: S.of(context).linkedinTitle, value: S.of(context).linkedin),
        _buildInfo(title: S.of(context).githubTitle, value: S.of(context).github),
      ],
    );
  }

  Widget _buildInfo({required String title, required String value}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.sp),
            child: Text(title, style: TextStyleConfig.infoTitle),
          ),
          Text(value, style: TextStyleConfig.infoBody),
        ],
      ),
    );
  }
}
