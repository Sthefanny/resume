import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_store.dart';
import '../../../common/enums/language_enum.dart';

class LanguageButtons extends StatelessWidget {
  final AppStore appStore;
  const LanguageButtons({super.key, required this.appStore});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.2.sw,
      height: 0.06.sh,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildButton(text: 'ENG', action: () => appStore.setLocale(LanguageEnum.english)),
              _buildButton(text: 'PT-BR', action: () => appStore.setLocale(LanguageEnum.portuguese)),
            ],
          ),
          _buildButton(text: 'Download PDF', action: () {}),
        ],
      ),
    );
  }

  Widget _buildButton({required String text, required Function action}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.sp),
      child: ElevatedButton(
        onPressed: () => action(),
        child: Text(text),
      ),
    );
  }
}
