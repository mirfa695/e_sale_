import 'package:e_sale/constants/color_constants.dart';
import 'package:e_sale/helpers/hive_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_sale/models/profile_model.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController {
  Rx<Profile?> profile = Rx<Profile?>(null);
   var isEdit = false.obs;
    final imagePath = Rx<String?>(null);
  final picker = ImagePicker();

  @override
  void onInit() {
    super.onInit();
    loadProfileFromHive();
  }

  Future<void> loadProfileFromHive() async {
    profile.value = await HiveHelper.getProfile();
    
  }
  Future<void> getImageFromGallery() async {
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.gallery);
    
    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
    }
  }

  Future<void> getImageFromCamera() async {
    final XFile? pickedFile = await picker.pickImage(source: ImageSource.camera);
    
    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
    }
  }
  
  
  void setToEdit(){
    isEdit(!isEdit.value);
  }
  void updateUserName(String name) {
profile.update( (user) { 
user?.username=name;
});
}
void updatePassWord(String password) {
 profile.update((user){
  user?.password=password;
 });
}
void updateEmail(String email) {
 profile.update((user){
  user?.email=email;
 });
}
Future<void> updateProfile(BuildContext context) async {
 try {
  await HiveHelper.updateProfile(profile: profile.value);
  await loadProfileFromHive();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('SuccessFully Updated'),
      backgroundColor: ColorConstants.greenColor,
      duration: Duration(seconds: 3),
    ),
  );
} catch(e) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Failed to update profile: ${e.toString()}'),
      backgroundColor:ColorConstants.redColor,
      duration: Duration(seconds: 3),
    ),
  );
}
isEdit(false);

}
}
