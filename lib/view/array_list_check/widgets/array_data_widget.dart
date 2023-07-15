import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_test2/view_model/controller/array_controller.dart';

class ArrayDataWidget extends StatelessWidget {
  final ArrayController arrayController;
  const ArrayDataWidget({Key? key, required this.arrayController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:Obx((){
          return  Container(
            padding:const  EdgeInsets.all(20),
            child: Column(

              children:arrayController.personList.map((persons){
                return Container(
                  child: Card(
                    child: ListTile(
                      title: Text(persons.name),
                      subtitle: Text(persons.phone),
                      trailing: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent
                        ),
                        onPressed: (){
                          arrayController.removeData(persons);
                        },
                        child:const Icon(Icons.delete),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          );
        })
    );
  }
}
