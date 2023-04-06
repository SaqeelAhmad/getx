
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'favorite_Contreller.dart';


class HomeScreenOne extends StatefulWidget {
  var Name , Number;
   HomeScreenOne({Key? key,  this.Name, this . Number}) : super(key: key);

  @override
  State<HomeScreenOne> createState() => _HomeScreenOneState();
}

class _HomeScreenOneState extends State<HomeScreenOne> {
  favoriteController controller = Get.put(favoriteController());
  // final item = ['Apple','Orange', 'Mango'];
  // final favorite = [];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('Home Screen One '+ Get.arguments[0]),),
      body: Center(child: Column(
        children: [
          TextButton(onPressed: () {
            Get.back();
          }, child: Text("back in getx"),),
          Expanded(
            child: ListView.builder(

              itemCount:  controller.item.length,
                itemBuilder: (context ,index){
              return Card(child: ListTile(
                title: Text(controller.item[index].toString()),
                trailing:  Obx(()=>
                    Icon(Icons.favorite,
                      color: controller.favorite.contains(controller.item[index].toString())? Colors.red: Colors.greenAccent ,),
                ),
                onTap: (){
                  if(controller.favorite.contains(controller.item[index].toString())){
                   // controller. favorite.remove(controller.item[index].toString());
                    controller.removefavorite(controller.item[index].toString());
                  }else{
                    controller.addFavorite(controller.item[index].toString());
                   // controller.favorite.add(controller.item[index].toString());
                  }

                },

              ),
              );
            }
            ),
          ),

        ],
      ),),
    );
  }
}
