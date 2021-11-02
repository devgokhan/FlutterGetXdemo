import 'package:get/get.dart';

class BaseTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'hello': 'Hello!',
      'message': 'Hi @name welcome. Today is @date',
    },
    'tr_TR': {
      'hello': 'Merhaba!',
      'message': 'Selam @name hoş geldin. Bugünün tarihi @date',
    }
  };
}