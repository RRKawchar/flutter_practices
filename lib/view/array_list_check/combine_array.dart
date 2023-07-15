import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:github_test2/model/users.dart';
import 'package:github_test2/view_model/controller/combine_controller.dart';

class CombineArray extends StatefulWidget {
  const CombineArray({Key? key}) : super(key: key);

  @override
  State<CombineArray> createState() => _CombineArrayState();
}

class _CombineArrayState extends State<CombineArray> {
  final combineController = Get.put(CombineController());

  @override
  void initState() {
    combineController.addListData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Combine List"),
      ),
      body: Obx((){
        return ListView.builder(
            itemCount: combineController.userList.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                    title: Text(combineController.userList[index].name),
                    subtitle: Text(combineController.userList[index].address),
                    trailing: IconButton(
                      onPressed: () {
                        combineController.deleteFromList(combineController.userList[index]);
                      },
                      icon: const Icon(Icons.delete),
                    )),
              );
            });
      })
    );
  }
}
