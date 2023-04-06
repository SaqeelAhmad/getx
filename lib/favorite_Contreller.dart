



//import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:get/get.dart';

class favoriteController extends GetxController{
  final item = ['Apple','Orange', 'Mango'].obs;
  RxList favorite = [].obs;



addFavorite (String value){

  favorite.add(value);
  //print(favorite.toString());

}
removefavorite (String value){
  favorite.remove(value);
 // print(value);
}






}