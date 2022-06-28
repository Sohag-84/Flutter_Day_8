import 'package:day_8/languages/bangla.dart';
import 'package:day_8/languages/english.dart';
import 'package:get/get.dart';

class Languages extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': en,
    'bn_BD': ban
  };

}