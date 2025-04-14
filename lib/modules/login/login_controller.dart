import 'package:logiology/helpers/hive_helper.dart';
import 'package:get/get.dart';
import 'package:logiology/models/profile_model.dart';

class LoginController extends GetxController {
  Rx<Profile?> profile = Rx<Profile?>(Profile());
  Rx<String> errorMessage=''.obs;
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
  Future<bool> checkUser() async {
    Profile profileStored=await HiveHelper.getProfile();
   
   if(profile.value?.username!=profileStored.username){
    errorMessage.value="User name doesn't matches";
    return false;
   }else if(profile.value?.password!=profileStored.password){
     errorMessage.value="User name and password doesn't matches";
     return false;
   }else if(profile.value?.username==profileStored.username&&profile.value?.password==profileStored.password){
    return true;
   }else{
    return false;
   }
  }
}
