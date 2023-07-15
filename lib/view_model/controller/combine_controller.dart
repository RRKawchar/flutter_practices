import 'package:get/get.dart';
import 'package:github_test2/model/users.dart';

class CombineController extends GetxController{

  RxList userList=[].obs;

  List<Users> list1 = [
    Users(name: "Kawchar", address: "Dhaka"),
    Users(name: "Khadija Akter Shiya", address: "Hatiya"),
    Users(name: "Tarek", address: "Feni"),
    Users(name: "Jubayer", address: "Noakhali"),
  ];

  List<Users> list2 = [
    Users(name: "Riyaz", address: "Chittagong"),
    Users(name: "Rubel", address: "Barishal"),
  ];


  void addListData(){
    userList.value=List.from(list1)..addAll(list2);
  }

  void deleteFromList(Users users){
    userList.removeWhere((element) => element.name==users.name);
  }






}