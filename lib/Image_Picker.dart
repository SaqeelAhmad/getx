


import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{



RxString ImagePath = ''.obs;
Future getImageCamera()async{

  final ImagePicker _picker= ImagePicker();
  final image = await _picker.pickImage(source: ImageSource.camera);
  if (image != null){
    ImagePath.value = image.path.toString();
  }
}
Future getImagegalery()async{

  final ImagePicker _picker= ImagePicker();
  final image = await _picker.pickImage(source: ImageSource.gallery);
  if (image != null){
    ImagePath.value = image.path.toString();
  }
}




}