import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../app_store.dart';
import '../../common/configs/color_config.dart';
import 'home_store.dart';
import 'widgets/resume_wiget.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'Home'}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final HomeStore store;
  late final AppStore appstore;

  @override
  void initState() {
    super.initState();
    store = Modular.get<HomeStore>();
    appstore = Modular.get<AppStore>();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          backgroundColor: ColorConfig.background,
          body: ResumeWidget(),
        );
      },
    );
  }
}
