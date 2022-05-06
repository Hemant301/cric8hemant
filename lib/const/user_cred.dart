import 'package:cric8hemant/const/storage.dart';

class UserCred {
  bool isUserLogin() {
    String isActive = StorageUtil.getString('USERID');
    //print("ff${isActive}ff");
    return isActive == '' ? false : true;
  }

  String getUserId() {
    String isActive = StorageUtil.getString('USERID');
    //print("ff${isActive}ff");
    return isActive;
  }

  String getUserFilledInfo() {
    String isActive = StorageUtil.getString('INFO');
    return isActive;
  }

  String getUserUploadPhoto() {
    String isActive = StorageUtil.getString('PHOTO');
    return isActive;
  }

  String getPincode() {
    String isActive = StorageUtil.getString('PINCODE');
    return isActive;
  }

  void addUserId(String id) {
    StorageUtil.putString('USERID', '$id');
  }

  void setUserFilledInfo(String info) {
    StorageUtil.putString('INFO', '$info');
  }

  void addPincode(String pin) {
    StorageUtil.putString('PINCODE', '$pin');
  }

  void setUserUploadPhoto(String info) {
    StorageUtil.putString('PHOTO', '$info');
  }

  void logoutUser() {
    StorageUtil.putString('USERID', '');
    StorageUtil.putString('INFO', '');
    StorageUtil.putString('PHOTO', '');
    StorageUtil.clearAll();
  }
}

final userCred = UserCred();
