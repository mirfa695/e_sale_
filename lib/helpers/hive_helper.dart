import 'package:logiology/models/profile_model.dart';
import 'package:hive/hive.dart';

class HiveHelper{

static Future<Profile> getProfile() async {
  final box = await Hive.openBox<Profile>('profileBox');
  if (box.isNotEmpty) {
    return box.getAt(0)!;
  }
  final defaultProfile = Profile(username: 'admin', password: 'Pass@123', email: 'admin@gmail.com');

  await box.add(defaultProfile);

  return defaultProfile;
}
static Future<void> updateProfile({
  Profile? profile
}) async {
  final box = await Hive.openBox<Profile>('profileBox');
  
  if (box.isEmpty) {
    final defaultProfile = Profile(
      username: 'admin', 
      password: 'Pass@123', 
      email: 'admin@gmail.com'
    );
    await box.add(defaultProfile);
    return;
  }
  final existingProfile = box.getAt(0)!;
   final updatedProfile = profile??existingProfile;
  await box.putAt(0, updatedProfile);
}
}