import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/Counter_Contreller.dart';
import 'package:getx/ExampleTwo.dart';
import 'package:getx/Image_Picker.dart';

import 'Example_Three_Contreller.dart';
import 'Home_Screen_One.dart';

class HomeScreen extends StatefulWidget {
  // bool darkMode;
  HomeScreen({Key? key //, required this.darkMode
      })
      : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController controller = Get.put(CounterController());
  double fontSize = 24.0;
  final ExampleTwoController ExampleTeoController = Get.put(ExampleTwoController());
  final ExampleThreeController ThreeController= Get.put(ExampleThreeController());
  final ImagePickerController ImageController = Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx'),
      ),
      body: Obx(() => Container(
            color: Colors.red.withOpacity(ExampleTeoController.opacity.value),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          Get.snackbar('ssapro', "Welcome to my flutter course. ",
                              icon: Icon(Icons.ac_unit_rounded),
                              onTap: (snafshot) {
                            Get.snackbar('title', "message",
                                snackPosition: SnackPosition.BOTTOM);
                          },
                              mainButton: TextButton(
                                  onPressed: () {
                                    print('ljljlk');
                                  },
                                  child: Text("Click")));
                        },
                        child: Text('Get Snackbar Used')),
                    TextButton(
                        onPressed: () {
                          Get.bottomSheet(Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ListTile(
                                onTap: () {
                                  Get.changeTheme(ThemeData.dark());
                                  // Get.changeThemeMode(ThemeMode.dark);
                                  Get.back();
                                },
                                leading: Icon(Icons.dark_mode),
                                title: Text('Dark Mode'),
                              ),
                              ListTile(
                                leading: Icon(Icons.light_mode),
                                title: Text('light Mode'),
                                onTap: () {
                                  Get.changeTheme(ThemeData.light());
                                  //  Get.changeThemeMode(ThemeMode.light);
                                  Get.back();
                                },
                              ),
                              // ListTile(
                              //     title: Text('Dark Mode'.tr),
                              //     trailing: Switch(
                              //       value: darkMode.value,
                              //       onChanged: (value) async {
                              //         darkMode.value = value;
                              //
                              //         Get.changeTheme(
                              //             !value ? ThemeData.light() : ThemeData.dark());
                              //         Get.changeThemeMode(
                              //             !value ? ThemeMode.light : ThemeMode.dark);
                              //         Get.reloadAll();
                              //        // final prefs = await SharedPreferences.getInstance();
                              //        // await prefs.setBool('darkMode', value);
                              //       },
                              //     ))
                            ],
                          ));
                        },
                        child: Text('Bottom Sheet')),
                    TextButton(
                        onPressed: () {
                          Get.defaultDialog(
                            title: 'Dialog Alert',
                            middleText: 'show the message',
                            cancel: TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text('Cancel')),
                            confirm: TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text('ok')),
                          );
                        },
                        child: Text("Dialog Alert")),
                    TextButton(
                      onPressed: () {
                        Get.to(HomeScreenOne());
                      },
                      child: Text('Push in get'),
                    ),
                    TextButton(
                        onPressed: () {
                          Get.toNamed('/TWoHome', arguments: ['name', '123456']);
                        },
                        child: Text("Route in getx")),
                    ListTile(
                      title: Text('Message'.tr),
                      subtitle: Text('Name'.tr),
                    ),
                    Row(
                      children: [
                        OutlinedButton(
                            onPressed: () {
                              Get.updateLocale(Locale("en", "US"));
                            },
                            child: const Text('English')),
                        OutlinedButton(
                            onPressed: () {
                              Get.updateLocale(Locale("ur", "PK"));
                            },
                            child: const Text('Urdu')),
                      ],
                    ),
                    Obx(() => Text(
                          controller.counter.toString(),
                          style: TextStyle(fontSize: fontSize),
                        )),
                    TextButton(
                        onPressed: () {
                          controller.incrementCounter();
                        },
                        child: Text('Counter')),
                    Obx(() => Slider(
                        value: ExampleTeoController.opacity.value,
                        onChanged: (value) {
                          ExampleTeoController. SetOpacity(value);

                        }),),
                    Obx(()=> Switch(value: ThreeController.cheak.value, onChanged: (value){
                      ThreeController.notify(value);
                    })),
                    Obx(() => Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: ImageController.ImagePath.isEmpty?
                          null:
                          FileImage(  File(ImageController.ImagePath.toString())) ,
                        ),
                        IconButton(onPressed: (){
                          ImageController.getImageCamera();
                        }, icon: Icon(Icons.camera)),
                        IconButton(onPressed: (){ImageController.getImagegalery();}, icon: Icon(Icons.image)),

                      ],
                    ),),
                    
                    
                  ],
                ),
              ),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar('SSAPro', "Welcome to my flutter course. ");
        },
      ),
    );
  }
}
