


import 'package:get/get.dart';

class ExampleThreeController extends GetxController{


RxBool  cheak = false.obs;

void notify(bool value ){


cheak.value= value;
}


}