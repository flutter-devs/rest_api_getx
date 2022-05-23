import 'package:api_getx/ui/controller/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DataController dataController = Get.put(DataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rest API Using GetX',),
      centerTitle: true,),
      body: Obx(() => dataController.isDataLoading.value
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: dataController.user_model!.data!.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20,right: 20),
                        padding: const EdgeInsets.only(left: 20),
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        decoration:  BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: NetworkImage(dataController.user_model!.data![index].picture!),
                            ),
                            const SizedBox(width: 30,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(dataController.user_model!.data![index].title!.toUpperCase(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 18
                                ),),
                                Text(dataController.user_model!.data![index].firstName!,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                    )),
                                Text(dataController.user_model!.data![index].lastName!,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 18
                                    )),
                              ],
                            ),
                          ],
                        )
                    ),
                    const SizedBox(
                      height: 10,
                    )
                  ],
                );
              })),
    );
  }
}
