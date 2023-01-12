import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../generated/l10n.dart';
import '../../../common/configs/color_config.dart';
import '../../../common/configs/text_style_config.dart';
import '../../../common/widgets/score_widget.dart';

class LanguagesWidget extends StatelessWidget {
  const LanguagesWidget({super.key});

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
        _buildLanguages(context),
      ],
    );
  }

  Widget _buildIcon() {
    return Padding(
      padding: EdgeInsets.only(right: 8.sp),
      child: FaIcon(FontAwesomeIcons.solidFlag, color: ColorConfig.background, size: 35.sp),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      S.of(context).languages,
      style: TextStyleConfig.title,
    );
  }

  Widget _buildLanguages(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLanguage(title: S.of(context).portuguese, score: 5),
        _buildLanguage(title: S.of(context).english, score: 4),
      ],
    );
  }

  Widget _buildLanguage({required String title, required int score}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyleConfig.infoTitle),
          ScoreWidget(score: score),
        ],
      ),
    );
  }
}
