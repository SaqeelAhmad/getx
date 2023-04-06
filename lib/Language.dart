




import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'Message' : "What is you'r Name?" ,
      'Name': "Syed Ahmad"
    },
    'ur_PK': {
      'Message' : "آپ کا نام کیا ہے؟" ,
      'Name': "سیداحمد"
    }
  };
}