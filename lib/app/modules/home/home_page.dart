import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../generated/l10n.dart';
import '../../app_store.dart';
import '../../common/enums/language_enum.dart';
import 'home_store.dart';

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
    return Observer(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Counter'),
        ),
        body: Column(
          children: [
            Text('${store.counter} == ${S.of(context).exampleText}, ${S.of(context).oneMoreText}'),
            Text('Lingua = ${appstore.locale}'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (appstore.locale == Locale('en')) {
              appstore.setLocale(LanguageEnum.portuguese);
            } else {
              appstore.setLocale(LanguageEnum.english);
            }
          },
          child: Icon(Icons.add),
        ),
      );
    });
  }
}
