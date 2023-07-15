import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_test2/view/array_list_check/widgets/array_data_widget.dart';
import 'package:github_test2/view_model/controller/array_controller.dart';

class ArrayLitCheck extends StatefulWidget {
  const ArrayLitCheck({Key? key}) : super(key: key);

  @override
  State<ArrayLitCheck> createState() => _ArrayLitCheckState();
}

class _ArrayLitCheckState extends State<ArrayLitCheck> {

  final arrayController=Get.put(ArrayController());
  @override
  void initState() {
   arrayController.addPersonData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add & Delete"),
      ),
      body: ArrayDataWidget(arrayController: arrayController,)
    );
  }
}
