import 'dart:async';

import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// A custom set of date patterns for the `ku` locale.
///
/// These are not accurate and are just a clone of the date patterns for the
/// `no` locale to demonstrate how one would write and use custom date patterns.
// #docregion Date
const kuLocaleDatePatterns = {
  'd': 'd.',
  'E': 'ccc',
  'EEEE': 'cccc',
  'LLL': 'LLL',
// #enddocregion Date
  'LLLL': 'LLLL',
  'M': 'L.',
  'Md': 'd.M.',
  'MEd': 'EEE d.M.',
  'MMM': 'LLL',
  'MMMd': 'd. MMM',
  'MMMEd': 'EEE d. MMM',
  'MMMM': 'LLLL',
  'MMMMd': 'd. MMMM',
  'MMMMEEEEd': 'EEEE d. MMMM',
  'QQQ': 'QQQ',
  'QQQQ': 'QQQQ',
  'y': 'y',
  'yM': 'M.y',
  'yMd': 'd.M.y',
  'yMEd': 'EEE d.MM.y',
  'yMMM': 'MMM y',
  'yMMMd': 'd. MMM y',
  'yMMMEd': 'EEE d. MMM y',
  'yMMMM': 'MMMM y',
  'yMMMMd': 'd. MMMM y',
  'yMMMMEEEEd': 'EEEE d. MMMM y',
  'yQQQ': 'QQQ y',
  'yQQQQ': 'QQQQ y',
  'H': 'HH',
  'Hm': 'HH:mm',
  'Hms': 'HH:mm:ss',
  'j': 'HH',
  'jm': 'HH:mm',
  'jms': 'HH:mm:ss',
  'jmv': 'HH:mm v',
  'jmz': 'HH:mm z',
  'jz': 'HH z',
  'm': 'm',
  'ms': 'mm:ss',
  's': 's',
  'v': 'v',
  'z': 'z',
  'zzzz': 'zzzz',
  'ZZZZ': 'ZZZZ',
};

/// A custom set of date symbols for the `ku` locale.
///
/// These are not accurate and are just a clone of the date symbols for the
/// `no` locale to demonstrate how one would write and use custom date symbols.
// #docregion Date2
const kuDateSymbols = {
  'NAME': 'ku',
  'ERAS': <dynamic>[
    'f.Kr.',
    'e.Kr.',
  ],
// #enddocregion Date2
  'ERANAMES': <dynamic>[
    'før Kristus',
    'etter Kristus',
  ],
  'NARROWMONTHS': <dynamic>[
    'J',
    'F',
    'M',
    'A',
    'M',
    'J',
    'J',
    'A',
    'S',
    'O',
    'N',
    'D',
  ],
  'STANDALONENARROWMONTHS': <dynamic>[
    'J',
    'F',
    'M',
    'A',
    'M',
    'J',
    'J',
    'A',
    'S',
    'O',
    'N',
    'D',
  ],
  'MONTHS': <dynamic>[
    'ڕێبەندان',
    'ڕەشەمە',
    'نەورۆز',
    'گوڵان',
    'جۆزەردان',
    'پووشپەڕ',
    'گەلاوێژ',
    'خەرمانان',
    'ڕەزبەر',
    'گەڵاڕێزان',
    'سەرماوەز',
    'بەفرانبار',
  ],
  'STANDALONEMONTHS': <dynamic>[
    'ڕێبەندان',
    'ڕەشەمە',
    'نەورۆز',
    'گوڵان',
    'جۆزەردان',
    'پووشپەڕ',
    'گەلاوێژ',
    'خەرمانان',
    'ڕەزبەر',
    'گەڵاڕێزان',
    'سەرماوەز',
    'بەفرانبار',
  ],
  'SHORTMONTHS': <dynamic>[
    'ڕێبەندان.',
    'ڕەشەمە.',
    'نەورۆز.',
    'گوڵان.',
    'جۆزەردان',
    'پووشپەڕ.',
    'گەلاوێژ.',
    'خەرمانان.',
    'ڕەزبەر.',
    'گەڵاڕێزان.',
    'سەرماوەز.',
    'بەفرانبار.',
  ],
  'STANDALONESHORTMONTHS': <dynamic>[
    'ڕێبەندان',
    'ڕەشەمە',
    'نەورۆز',
    'گوڵان',
    'جۆزەردان',
    'پووشپەڕ',
    'گەلاوێژ',
    'خەرمانان',
    'ڕەزبەر',
    'گەڵاڕێزان',
    'سەرماوەز',
    'بەفرانبار',
  ],
  'WEEKDAYS': <dynamic>[
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
  ],
  'STANDALONEWEEKDAYS': <dynamic>[
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
  ],
  'SHORTWEEKDAYS': <dynamic>[
    'یەکشەممە.',
    'دووشەممە.',
    'سێشەممە.',
    'چوارشەممە.',
    'پێنجشەممە.',
    'هەینی.',
    'شەممە.',
  ],
  'STANDALONESHORTWEEKDAYS': <dynamic>[
    'یەکشەممە.',
    'دووشەممە.',
    'سێشەممە.',
    'چوارشەممە.',
    'پێنجشەممە.',
    'هەینی.',
    'شەممە.',
  ],
  'NARROWWEEKDAYS': <dynamic>[
    'S',
    'M',
    'T',
    'O',
    'T',
    'F',
    'L',
  ],
  'STANDALONENARROWWEEKDAYS': <dynamic>[
    'S',
    'M',
    'T',
    'O',
    'T',
    'F',
    'L',
  ],
  'SHORTQUARTERS': <dynamic>[
    'K1',
    'K2',
    'K3',
    'K4',
  ],
  'QUARTERS': <dynamic>[
    '1. kvartal',
    '2. kvartal',
    '3. kvartal',
    '4. kvartal',
  ],
  'AMPMS': <dynamic>[
    'a.m.',
    'p.m.',
  ],
  'DATEFORMATS': <dynamic>[
    'EEEE d. MMMM y',
    'd. MMMM y',
    'd. MMM y',
    'dd.MM.y',
  ],
  'TIMEFORMATS': <dynamic>[
    'HH:mm:ss zzzz',
    'HH:mm:ss z',
    'HH:mm:ss',
    'HH:mm',
  ],
  'AVAILABLEFORMATS': null,
  'FIRSTDAYOFWEEK': 0,
  'WEEKENDRANGE': <dynamic>[
    5,
    6,
  ],
  'FIRSTWEEKCUTOFFDAY': 3,
  'DATETIMEFORMATS': <dynamic>[
    '{1} {0}',
    '{1} \'kl\'. {0}',
    '{1}, {0}',
    '{1}, {0}',
  ],
};

// #docregion Delegate
class _KuMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _KuMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ku';

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());

    // The locale (in this case `ku`) needs to be initialized into the custom
    // date symbols and patterns setup that Flutter uses.
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: kuLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(kuDateSymbols),
    );

    return SynchronousFuture<MaterialLocalizations>(
      KuMaterialLocalizations(
        localeName: localeName,
        // The `intl` library's NumberFormat class is generated from CLDR data
        // (see https://github.com/dart-lang/intl/blob/master/lib/number_symbols_data.dart).
        // Unfortunately, there is no way to use a locale that isn't defined in
        // this map and the only way to work around this is to use a listed
        // locale's NumberFormat symbols. So, here we use the number formats
        // for 'ar' instead.
        decimalFormat: intl.NumberFormat('#,##0.###', 'ar'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'ar'),
        // DateFormat here will use the symbols and patterns provided in the
        // `date_symbol_data_custom.initializeDateFormattingCustom` call above.
        // However, an alternative is to simply use a supported locale's
        // DateFormat symbols, similar to NumberFormat above.
        fullYearFormat: intl.DateFormat('y', localeName),
        compactDateFormat: intl.DateFormat('yMd', localeName),
        shortDateFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        shortMonthDayFormat: intl.DateFormat('MM/DD', localeName),
      ),
    );
  }

  @override
  bool shouldReload(_KuMaterialLocalizationsDelegate old) => false;
}
// #enddocregion Delegate

/// A custom set of localizations for the 'ku' locale. In this example, only
/// the value for openAppDrawerTooltip was modified to use a custom message as
/// an example. Everything else uses the American English (ar) messages
/// and formatting.
class KuMaterialLocalizations extends GlobalMaterialLocalizations {
  const KuMaterialLocalizations({
    String localeName = 'ku',
    required intl.DateFormat fullYearFormat,
    required intl.DateFormat compactDateFormat,
    required intl.DateFormat shortDateFormat,
    required intl.DateFormat mediumDateFormat,
    required intl.DateFormat longDateFormat,
    required intl.DateFormat yearMonthFormat,
    required intl.DateFormat shortMonthDayFormat,
    required intl.NumberFormat decimalFormat,
    required intl.NumberFormat twoDigitZeroPaddedFormat,
  }) : super(
    localeName: localeName,
    fullYearFormat: fullYearFormat,
    compactDateFormat: compactDateFormat,
    shortDateFormat: shortDateFormat,
    mediumDateFormat: mediumDateFormat,
    longDateFormat: longDateFormat,
    yearMonthFormat: yearMonthFormat,
    shortMonthDayFormat: shortMonthDayFormat,
    decimalFormat: decimalFormat,
    twoDigitZeroPaddedFormat: twoDigitZeroPaddedFormat,
  );

// #docregion Getters
  @override
  String get moreButtonTooltip => r'زیاتر';

  @override
  String get aboutListTileTitleRaw => r'دەربارەی $applicationName';

  @override
  String get alertDialogLabel => r'ئاگاداری';
// #enddocregion Getters

  @override
  String get anteMeridiemAbbreviation => r'بەیانی';

  @override
  String get backButtonTooltip => r'گەڕانەوە';

  @override
  String get cancelButtonLabel => r'ڕەتکردنەوە';

  @override
  String get closeButtonLabel => r'داخستن';

  @override
  String get closeButtonTooltip => r'داخستن';

  @override
  String get collapsedIconTapHint => r'گەورەکردن';

  @override
  String get continueButtonLabel => r'بەردەوامبە';

  @override
  String get copyButtonLabel => r'لەبەرگرتنەوە';

  @override
  String get cutButtonLabel => r'هەڵگرتن';

  @override
  String get deleteButtonTooltip => r'سڕینەوە';

  @override
  String get dialogLabel => r'دیالۆگ';

  @override
  String get drawerLabel => r'مێنیوی گەڕان';

  @override
  String get expandedIconTapHint => r'داخستن';

  @override
  String get firstPageTooltip => r'یەکەم پەڕە';

  @override
  String get hideAccountsLabel => r'شاردنەوەی هەژمارەکان';

  @override
  String get lastPageTooltip => r'دوایین پەڕە';

  @override
  String get licensesPageTitle => r'لایسێنس';

  @override
  String get modalBarrierDismissLabel => r'لابردن';

  @override
  String get nextMonthTooltip => r'مانگی داهاتوو';

  @override
  String get nextPageTooltip => r'پەڕەی داهاتوو';

  @override
  String get okButtonLabel => r'ئۆکەی';

  @override
  // A custom drawer tooltip message.
  String get openAppDrawerTooltip => r'ڕێنمای مێنیوی گەڕانی تایبەت';

// #docregion Raw
  @override
  String get pageRowsInfoTitleRaw => r'$firstRow–$lastRow لە $rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      r'$firstRow–$lastRow لە $rowCount';
// #enddocregion Raw

  @override
  String get pasteButtonLabel => r'دانان';

  @override
  String get popupMenuLabel => r'مێنیوی دەرچوو';

  @override
  String get postMeridiemAbbreviation => r'ئێوارە';

  @override
  String get previousMonthTooltip => r'مانگی ڕابردوو';

  @override
  String get previousPageTooltip => r'پەڕەی ڕابردوو';

  @override
  String get refreshIndicatorSemanticLabel => r'نوێکردنەوە';

  @override
  String? get remainingTextFieldCharacterCountFew => null;

  @override
  String? get remainingTextFieldCharacterCountMany => null;

  @override
  String get remainingTextFieldCharacterCountOne => r'1 پیت ماوە';

  @override
  String get remainingTextFieldCharacterCountOther =>
      r'$remainingCount پیت ماوە';

  @override
  String? get remainingTextFieldCharacterCountTwo => null;

  @override
  String get remainingTextFieldCharacterCountZero => r'هیچ پیتێک نەماوە';

  @override
  String get reorderItemDown => r'بڕۆ خوارەوە';

  @override
  String get reorderItemLeft => r'بڕۆ بۆ چەپ';

  @override
  String get reorderItemRight => r'بڕۆ بۆ ڕاست';

  @override
  String get reorderItemToEnd => r'بڕۆ بۆ کۆتایی';

  @override
  String get reorderItemToStart => r'بڕۆ بۆ سەرەتا';

  @override
  String get reorderItemUp => r'بڕۆ سەرەوە';

  @override
  String get rowsPerPageTitle => r'ڕۆو لە پەڕەیەکدا:';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => r'گەڕان';

  @override
  String get selectAllButtonLabel => r'دیاریکردنی هەمووی';

  @override
  String? get selectedRowCountTitleFew => null;

  @override
  String? get selectedRowCountTitleMany => null;

  @override
  String get selectedRowCountTitleOne => r'1 شت دیاریکراوە';

  @override
  String get selectedRowCountTitleOther => r'$selectedRowCount شت دیاریکراوە';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String get selectedRowCountTitleZero => r'هیچ شتێک دیارینەکراوە';

  @override
  String get showAccountsLabel => r'پیشاندانی هەژمار';

  @override
  String get showMenuTooltip => r'پیشاندانی مێنیو';

  @override
  String get signedInLabel => r'چۆتە ژوورەوە';

  @override
  String get tabLabelRaw => r'تابی $tabIndex لە $tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.h_colon_mm_space_a;

  @override
  String get timePickerHourModeAnnouncement => r'کاژێرەکان دیاریبکە';

  @override
  String get timePickerMinuteModeAnnouncement => r'خولەکەکان دیاریبکە';

  @override
  String get viewLicensesButtonLabel => r'سەیرکردنی لایسێنسەکان';

  @override
  List<String> get narrowWeekdays =>
      const <String>['S', 'M', 'T', 'W', 'T', 'F', 'S'];

  @override
  int get firstDayOfWeekIndex => 0;

  static const LocalizationsDelegate<MaterialLocalizations> delegate =
  _KuMaterialLocalizationsDelegate();

  @override
  String get calendarModeButtonLabel => r'بیگۆڕە بۆ ڕۆژژمێر';

  @override
  String get dateHelpText => r'mm/dd/yyyy';

  @override
  String get dateInputLabel => r'رۆژ بنوسە';

  @override
  String get dateOutOfRangeLabel => r'لە دەرەوەی مەودایە.';

  @override
  String get datePickerHelpText => r'ڕۆژ دیاریبکە';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'رۆژی کۆتایی $fullDate';

  @override
  String get dateRangeEndLabel => r'ڕۆژی کۆتایی';

  @override
  String get dateRangePickerHelpText => 'مەودایەک دیاریبکە';

  @override
  String get dateRangeStartDateSemanticLabelRaw => 'ڕۆژی دەستپێک \$fullDate';

  @override
  String get dateRangeStartLabel => 'ڕۆژی دەستپێک';

  @override
  String get dateSeparator => '/';

  @override
  String get dialModeButtonLabel => 'بیگۆڕە بۆ کیبۆردی ژمارەکان';

  @override
  String get inputDateModeButtonLabel => 'بیگۆڕە بۆ نوسین';

  @override
  String get inputTimeModeButtonLabel => 'بیگۆڕە بۆ مۆدی نوسین';

  @override
  String get invalidDateFormatLabel => 'فۆڕمات هەڵەیە.';

  @override
  String get invalidDateRangeLabel => 'مەود هەڵەیە.';

  @override
  String get invalidTimeLabel => 'کاتێکی دروست بنوسە';

  @override
  String get licensesPackageDetailTextOther => '\$licenseCount لایسێنسەکان';

  @override
  String get saveButtonLabel => 'پاشەکەوتکردن';

  @override
  String get selectYearSemanticsLabel => 'ساڵ دیاریبکە';

  @override
  String get timePickerDialHelpText => 'کات دیاریبکە';

  @override
  String get timePickerHourLabel => 'کاژێر';

  @override
  String get timePickerInputHelpText => 'کات بنوسە';

  @override
  String get timePickerMinuteLabel => 'خولەک';

  @override
  String get unspecifiedDate => 'ڕۆژ';

  @override
  String get unspecifiedDateRange => 'مەودای ڕۆژ';

  @override
  String get keyboardKeyAlt => 'Alt';

  @override
  String get keyboardKeyAltGraph => 'AltGr';

  @override
  String get keyboardKeyBackspace => 'Backspace';

  @override
  String get keyboardKeyCapsLock => 'Caps Lock';

  @override
  String get keyboardKeyChannelDown => 'Channel Down';

  @override
  String get keyboardKeyChannelUp => 'Channel Up';

  @override
  String get keyboardKeyControl => 'Ctrl';

  @override
  String get keyboardKeyDelete => 'Del';

  @override
  String get keyboardKeyEject => 'Eject';

  @override
  String get keyboardKeyEnd => 'End';

  @override
  String get keyboardKeyEscape => 'Esc';

  @override
  String get keyboardKeyFn => 'Fn';

  @override
  String get keyboardKeyHome => 'Home';

  @override
  String get keyboardKeyInsert => 'Insert';

  @override
  String get keyboardKeyMeta => 'Meta';

  @override
  String get keyboardKeyMetaMacOs => 'Command';

  @override
  String get keyboardKeyMetaWindows => 'Win';

  @override
  String get keyboardKeyNumLock => 'Num Lock';

  @override
  String get keyboardKeyNumpad0 => 'Num 0';

  @override
  String get keyboardKeyNumpad1 => 'Num 1';

  @override
  String get keyboardKeyNumpad2 => 'Num 2';

  @override
  String get keyboardKeyNumpad3 => 'Num 3';

  @override
  String get keyboardKeyNumpad4 => 'Num 4';

  @override
  String get keyboardKeyNumpad5 => 'Num 5';

  @override
  String get keyboardKeyNumpad6 => 'Num 6';

  @override
  String get keyboardKeyNumpad7 => 'Num 7';

  @override
  String get keyboardKeyNumpad8 => 'Num 8';

  @override
  String get keyboardKeyNumpad9 => 'Num 9';

  @override
  String get keyboardKeyNumpadAdd => 'Num +';

  @override
  String get keyboardKeyNumpadComma => 'Num ,';

  @override
  String get keyboardKeyNumpadDecimal => 'Num .';

  @override
  String get keyboardKeyNumpadDivide => '+NUM';

  @override
  String get keyboardKeyNumpadEnter => 'Num Enter';

  @override
  String get keyboardKeyNumpadEqual => 'Num =';

  @override
  String get keyboardKeyNumpadMultiply => 'Num *';

  @override
  String get keyboardKeyNumpadParenLeft => 'Num (';

  @override
  String get keyboardKeyNumpadParenRight => 'Num )';

  @override
  String get keyboardKeyNumpadSubtract => 'Num -';

  @override
  String get keyboardKeyPageDown => 'PgDown';

  @override
  String get keyboardKeyPageUp => 'PgUp';

  @override
  String get keyboardKeyPower => 'Power';

  @override
  String get keyboardKeyPowerOff => 'Power Off';

  @override
  String get keyboardKeyPrintScreen => 'Print Screen';

  @override
  String get keyboardKeyScrollLock => 'Scroll Lock';

  @override
  String get keyboardKeySelect => 'Select';

  @override
  String get keyboardKeySpace => 'Space';

  @override
  String? get licensesPackageDetailTextFew => null;

  @override
  String? get licensesPackageDetailTextMany => null;

  @override
  String? get licensesPackageDetailTextOne => '1 لایسێنس';


  @override
  String? get licensesPackageDetailTextTwo => '2 لایسێنس';

  @override
  String? get licensesPackageDetailTextZero => 'No licenses';

  @override
  String get menuBarMenuLabel => 'Menu bar menu';

  @override
  String get keyboardKeyEisu => "Eisū";

  @override
  String get keyboardKeyHangulMode => "Hangul 模式";

  @override
  String get keyboardKeyHanjaMode => "Hanja 模式";

  @override
  String get keyboardKeyHankaku => "Hankaku";

  @override
  String get keyboardKeyHiragana => "Hiragana";

  @override
  String get keyboardKeyHiraganaKatakana => "Hiragana Katakana";

  @override
  String get keyboardKeyKanaMode => "Kana 模式";

  @override
  String get keyboardKeyKanjiMode => "Kanji 模式";

  @override
  String get keyboardKeyKatakana => 'Katakana';

  @override
  String get keyboardKeyRomaji => 'Romaji';

  @override
  String get keyboardKeyZenkaku => 'Zenkaku';

  @override
  String get keyboardKeyZenkakuHankaku => 'Zenkaku Hankaku';

}