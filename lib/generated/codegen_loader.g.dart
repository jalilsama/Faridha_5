// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ar = {
  "Faridha": "فريضة ",
  "hajj": "الحج",
  "Umrah": "العمرة",
  "Counter": "العداد",
  "Miqat": "الميقات",
  "Supplications": "الأدعية",
  "NearBy": "قريب  منك",
  "Settings": "الاعدادات",
  "Important Information": "معلومات مهمة",
  "Home": "الصفحة الرئسية",
  "Holy places": "أماكن مقدسة"
};
static const Map<String,dynamic> en = {
  "Faridha": "Faridha",
  "hajj": "Hajj",
  "Umrah": "Umrah",
  "Counter": "Counter",
  "Miqat": "Miqat",
  "Supplications": "Supplications",
  "NearBy": "NearBy",
  "Settings": "Settings",
  "Important Information": "Important Information",
  "Home": "Home",
  "Holy places": "Holy places"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ar": ar, "en": en};
}
