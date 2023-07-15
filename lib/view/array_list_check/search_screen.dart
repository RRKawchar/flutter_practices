import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {


  List<String> countriesList=["Canada", "Brazil", "USA", "Japan", "China","UK", "Uganda", "Uruguay","Bangladesh"];

  List<String> searchList=[];

  final searchController=TextEditingController();

  void searchData(String value){
    searchList= countriesList.where((element) => element.toLowerCase().contains(value.toLowerCase())).toList();
    setState(() {

    });
    print(countriesList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
             TextField(
               controller: searchController,
               onChanged: (value){
                 searchData(value);
               },
             ),
            Expanded(child: searchController.text.isEmpty?const Text("No Result found"):ListView.builder(
                itemCount: searchList.length,
                itemBuilder: (context,index){
              return ListTile(
                title: Text(searchList[index]),
              );
            }))


          ],
        ),
      ),
    );
  }
}
