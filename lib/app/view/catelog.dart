import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loginapp/app/controller/category_controller.dart.dart';
import 'package:loginapp/app/utils/constant.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text("category"),
              bottom: const TabBar(tabs: [
                Tab(
                  text: 'product',
                ),
                Tab(
                  text: 'categories',
                )
              ]),
            ),
            body: TabBarView(children: [
              Center(
                child: CategoryOfListView(),
              ),
              Center(
                child: CategoryOfListView(),
              )
            ]),
          ),
        ));
  }
}

class CategoryOfListView extends StatelessWidget {
  CategoryOfListView({super.key});

  final CategoryController categoryController = Get.put(CategoryController());

  final constans = Constans();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: categoryController.imageOfCategory.length,
          itemBuilder: (context, index) {
            return Card(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding:
                              const EdgeInsets.only(bottom: 3.0, left: 10.0),
                          child: Image.asset(
                            categoryController.imageOfCategory[index],
                            fit: BoxFit.cover,
                            height: 80,
                            width: 80,
                            alignment: Alignment.topLeft,
                          )),
                      Constans().sbWd10,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Constans().sbHt10,
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.7,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  categoryController.titilesOfCategory[index],
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                const Icon(Icons.more_vert),
                              ],
                            ),
                          ),
                          const Text(
                            '1 pease',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Constans.green,
                            ),
                          ),
                          Constans().sbHt5,
                          Row(
                            children: [
                              const Icon(
                                Icons.currency_rupee_sharp,
                                size: 15,
                              ),
                              Text(
                                categoryController.cashOfcategory[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 252,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'in stock',
                                  style: TextStyle(color: Constans.green),
                                ),
                                Obx(
                                  () => Switch(
                                      value:
                                          categoryController.listOfSwich[index],
                                      onChanged: (value) {
                                        categoryController
                                            .switchFunction(index);
                                      }),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    color: Constans.grey,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: SizedBox(
                      //  height: 70,
                      width: 150,
                      child: Column(children: [
                        Row(
                          children: [
                            Icon(Icons.share),
                            Text(
                              'share product',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        )
                      ]),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
