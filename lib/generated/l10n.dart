// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Senior Flutter Developer`
  String get jobTitle {
    return Intl.message(
      'Senior Flutter Developer',
      name: 'jobTitle',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get summary {
    return Intl.message(
      'Summary',
      name: 'summary',
      desc: '',
      args: [],
    );
  }

  /// `I was Co-Organizer in the biggest Flutter Community in Latin America: Flutterando\nI started a female Flutter group in Telegram\nI did some live streams teaching Flutter at Twitch.tv\nI was a student at Apple Developer Academy 2021/2022`
  String get summaryDescription {
    return Intl.message(
      'I was Co-Organizer in the biggest Flutter Community in Latin America: Flutterando\nI started a female Flutter group in Telegram\nI did some live streams teaching Flutter at Twitch.tv\nI was a student at Apple Developer Academy 2021/2022',
      name: 'summaryDescription',
      desc: '',
      args: [],
    );
  }

  /// `Latest Experiences`
  String get lastestExperiences {
    return Intl.message(
      'Latest Experiences',
      name: 'lastestExperiences',
      desc: '',
      args: [],
    );
  }

  /// `Personal Info`
  String get personalInfo {
    return Intl.message(
      'Personal Info',
      name: 'personalInfo',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get addressTitle {
    return Intl.message(
      'Address',
      name: 'addressTitle',
      desc: '',
      args: [],
    );
  }

  /// `Curitiba - Paraná - Brazil`
  String get address {
    return Intl.message(
      'Curitiba - Paraná - Brazil',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phoneTitle {
    return Intl.message(
      'Phone',
      name: 'phoneTitle',
      desc: '',
      args: [],
    );
  }

  /// `+55 41 99975-1101`
  String get phone {
    return Intl.message(
      '+55 41 99975-1101',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get emailTitle {
    return Intl.message(
      'E-mail',
      name: 'emailTitle',
      desc: '',
      args: [],
    );
  }

  /// `sthefannygonzaga@gmail.com`
  String get email {
    return Intl.message(
      'sthefannygonzaga@gmail.com',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `LinkedIn`
  String get linkedinTitle {
    return Intl.message(
      'LinkedIn',
      name: 'linkedinTitle',
      desc: '',
      args: [],
    );
  }

  /// `linkedin.com/in/sthefannygonzaga/`
  String get linkedin {
    return Intl.message(
      'linkedin.com/in/sthefannygonzaga/',
      name: 'linkedin',
      desc: '',
      args: [],
    );
  }

  /// `Github`
  String get githubTitle {
    return Intl.message(
      'Github',
      name: 'githubTitle',
      desc: '',
      args: [],
    );
  }

  /// `github.com/Sthefanny`
  String get github {
    return Intl.message(
      'github.com/Sthefanny',
      name: 'github',
      desc: '',
      args: [],
    );
  }

  /// `Skills`
  String get skills {
    return Intl.message(
      'Skills',
      name: 'skills',
      desc: '',
      args: [],
    );
  }

  /// `Languages`
  String get languages {
    return Intl.message(
      'Languages',
      name: 'languages',
      desc: '',
      args: [],
    );
  }

  /// `Brazilian Portuguese`
  String get portuguese {
    return Intl.message(
      'Brazilian Portuguese',
      name: 'portuguese',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
