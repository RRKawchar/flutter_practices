import 'dart:async';

import 'package:get/get.dart';
import 'package:github_test2/model/person.dart';

class ArrayController extends GetxController{

  RxList personList =<Person>[].obs;
  RxBool isLoading=false.obs;


  void addPersonData() {
    personList.add(Person(
        id: '1', name: 'Kawchar', phone: '01888610543', address: 'Uttara'));
    personList.add(Person(
        id: '2',
        name: 'Khadija Akter Shiya',
        phone: '01888610543',
        address: 'Hatiya'));
    personList.add(Person(
        id: '3',
        name: 'Afchar Hossain',
        phone: '01888610543',
        address: 'Noakhali'));
    personList.add(
        Person(id: '4', name: 'Tarek', phone: '01888610543', address: 'Feni'));
    personList.add(Person(
        id: '5', name: 'Jubayer', phone: '01888610543', address: 'Feni'));
  }

  removeData(Person person){
   isLoading.value=true;
   Timer(const Duration(seconds: 2),(){
     personList.removeWhere((element) => element.id==person.id);
     isLoading.value=false;
   });


  }
}