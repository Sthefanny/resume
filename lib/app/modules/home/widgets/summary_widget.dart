import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../generated/l10n.dart';
import '../../../common/configs/color_config.dart';
import '../../../common/configs/text_style_config.dart';

class SummaryWidget extends StatelessWidget {
  const SummaryWidget({super.key});

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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildCircle(),
                  _buildDescription(context),
                ],
              ),
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
      child: FaIcon(FontAwesomeIcons.bullseye, color: ColorConfig.background, size: 32.sp),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      S.of(context).summary,
      style: TextStyleConfig.title,
    );
  }

  Widget _buildCircle() {
    return Padding(
      padding: EdgeInsets.only(left: 10.sp, top: 5.sp),
      child: FaIcon(FontAwesomeIcons.solidCircle, color: ColorConfig.background, size: 13.sp),
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 20.sp),
        child: Text(
          S.of(context).summaryDescription,
          style: TextStyleConfig.body,
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
