import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nong_nghiep/appcolor/appcolor.dart';
import 'package:nong_nghiep/products/product_tile.dart';
import 'package:nong_nghiep/seedling/seedlingcontroller.dart';
import 'package:nong_nghiep/widgets/empty.dart';

class SeedlingPage extends StatelessWidget {
  const SeedlingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final type = Get.arguments;
    final controller = Get.put(SeedlingController(type),tag: type);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Obx(() => Text(controller.category.name)),
        actions: [
          IconButton(
              onPressed: () => Get.toNamed('search'),
              icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () => Get.toNamed('notifications'),
              icon: const Icon(Icons.notifications)),
          IconButton(
              onPressed: () => Get.toNamed('cart'),
              icon: const Icon(Icons.shopping_cart_outlined)),
        ],
      ),
      //   body: Obx(
      //     () => (controller.subCategoryList.isEmpty)
      //         ? const Center(
      //             child: CircularProgressIndicator(),
      //           )
      //         : DefaultTabController(
      //             length: 2,
      //             child: Column(
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                   children: [
      //                     SizedBox(
      //                       width: Get.width * 2 / 3,
      //                       child: TabBar(
      //                           labelColor: mainColor,
      //                           tabs: List.generate(
      //                               controller.subCategoryList.length,
      //                               (index) => Tab(
      //                                     text: controller.subCategoryList[index]
      //                                         .subCategoryName,
      //                                   ))),
      //                     ),
      //                     popupMenuButton(),
      //                   ],
      //                 ),
      //                 Expanded(
      //                     child: TabBarView(
      //                         children: [seedlingView(context), seed(context)])),
      //               ],
      //             ),
      //           ),
      //   ),
      body: Obx(() =>
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  width: Get.width,
                  child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        for (var item in controller.category.subCategory) 
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              (controller.currentIndex.value
                              == controller.category.subCategory.indexOf(item))
                              ? mainColor : Colors.white,
                            )
                          ),
                          onPressed: () {
                            controller.updateSubCategory(item);
                            controller.currentIndex.value 
                            = controller.category.subCategory.indexOf(item);
                          }, 
                          child: Text(item.name, 
                            style: TextStyle(
                              color: (controller.currentIndex.value
                              == controller.category.subCategory.indexOf(item))
                              ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                ),
                if (controller.groupCategoryList.isNotEmpty)
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.only(left: 16,right: 16),
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: const Color(0xffc4c4c4),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child:
                      Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 32,
                        children: [
                          for (var item in controller.groupCategoryList)
                          ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white)
                            ),
                            onPressed: () => controller.updateGroupCategory(item),
                            child: Text(item.name,style: const TextStyle(
                              color: Colors.black
                            ),),
                          )
                        ],
                      ),
                  ),
                if(controller.groupCategory.subGroupCategory.isNotEmpty)
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  child:
                    Wrap(
                      children: [
                        for (var item in controller.groupCategory.subGroupCategory)
                        ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white)
                          ),
                          onPressed: () {
                            controller.updateSubGroupCategory(item);
                          },
                          child: Text(item.name,style: const TextStyle(color: Colors.black),),
                        )
                      ],
                    ),
                ),
                const Text('Ket qua tim kiem'),
                if(controller.productsList.isEmpty)
                const Empty()
                else
                for (var item in controller.productsList) 
                ProductsTile(item),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // PopupMenuButton<dynamic> popupMenuButton() {
  //   return PopupMenuButton(
  //     icon: const Icon(Icons.tune),
  //     itemBuilder: (context) => [
  //       ...SeedlingController.menuitem.map(buildItem).toList(),
  //       PopupMenuItem(
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             ElevatedButton(
  //               style: ButtonStyle(
  //                 backgroundColor: MaterialStateProperty.all<Color>(mainColor),
  //               ),
  //               onPressed: () {},
  //               child: const Text('SẮP XẾP',
  //                   style: TextStyle(
  //                       fontSize: 24,
  //                       color: Colors.white,
  //                       fontWeight: FontWeight.bold)),
  //             ),
  //           ],
  //         ),
  //       )
  //     ],
  //   );
  // }

  // PopupMenuItem<MenuItem> buildItem(MenuItem item) => PopupMenuItem(
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Text(item.text),
  //           Obx(
  //             () => Checkbox(
  //               value: item.checked.value,
  //               onChanged: (_) {
  //                 final newvalue = !item.checked.value;
  //                 item.checked.value = newvalue;
  //               },
  //             ),
  //           ),
  //         ],
  //       ),
  //     );

  // Padding seedlingView(BuildContext context) {
  //   return Padding(
  //     padding: const EdgeInsets.all(16),
  //     child: SingleChildScrollView(
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           Obx(() => Container(
  //                 width: Get.width,
  //                 padding: const EdgeInsets.all(8),
  //                 margin: const EdgeInsets.only(top: 16),
  //                 decoration: BoxDecoration(
  //                   borderRadius: BorderRadius.circular(14),
  //                   color: const Color(0xffc4c4c4),
  //                 ),
  //                 child: Column(
  //                   children: [
  //                     Wrap(
  //                       spacing: 32,
  //                       children: [
  //                         for (var item in controller.groupCategoryList)
  //                           ElevatedButton(
  //                             style: ButtonStyle(
  //                                 backgroundColor: MaterialStateProperty.all(
  //                               (controller.currentIndex.value ==
  //                                       controller.groupCategoryList
  //                                           .indexOf(item))
  //                                   ? mainColor
  //                                   : Colors.white,
  //                             )),
  //                             onPressed: () => controller.currentIndex.value =
  //                                 controller.groupCategoryList.indexOf(item),
  //                             child: Text(
  //                               item.groupCategoryName,
  //                               style: TextStyle(
  //                                 color: (controller.currentIndex.value ==
  //                                         controller.groupCategoryList
  //                                             .indexOf(item))
  //                                     ? Colors.white
  //                                     : Colors.black,
  //                               ),
  //                             ),
  //                           ),
  //                         ElevatedButton(
  //                             onPressed: () {},
  //                             child: const Text(
  //                               '...',
  //                               style: TextStyle(
  //                                   fontSize: 18, color: Colors.black),
  //                             ))
  //                       ],
  //                     ),
  //                   ],
  //                 ),
  //               )),
  //           if (controller.groupCategoryList[controller.currentIndex.value]
  //               .subGroupCategory.isNotEmpty)
  //             Obx(
  //               () => Container(
  //                 width: Get.width,
  //                 padding: const EdgeInsets.all(8),
  //                 margin: const EdgeInsets.only(top: 8),
  //                 decoration: BoxDecoration(
  //                     borderRadius: BorderRadius.circular(14),
  //                     color: const Color(0xffc4c4c4)),
  //                 child: Wrap(
  //                   spacing: 32,
  //                   children: List.generate(
  //                       controller
  //                           .groupCategoryList[controller.currentIndex.value]
  //                           .subGroupCategory
  //                           .length,
  //                       (index) => ElevatedButton(
  //                             onPressed: () =>
  //                                 controller.currnentSubGroup.value = index,
  //                             child: Text(
  //                               controller
  //                                   .groupCategoryList[
  //                                       controller.currentIndex.value]
  //                                   .subGroupCategory[index]
  //                                   .subGroupCategoryName,
  //                               style: TextStyle(
  //                                 color: (controller.currnentSubGroup.value ==
  //                                         index)
  //                                     ? Colors.white
  //                                     : Colors.black,
  //                               ),
  //                             ),
  //                             style: ButtonStyle(
  //                                 backgroundColor: MaterialStateProperty.all(
  //                                     (controller.currnentSubGroup.value ==
  //                                             index)
  //                                         ? mainColor
  //                                         : Colors.white)),
  //                           )),
  //                 ),
  //               ),
  //             ),
  //           const Padding(
  //             padding: EdgeInsets.only(top: 16),
  //             child: Text('Kết quả tìm kiếm',
  //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
  //           ),
  //           Column(
  //             children: List.generate(
  //                 controller.productApi.length,
  //                 (index) => InkWell(
  //                       onTap: () => Get.toNamed('detailproducts'),
  //                       child: ProductItem(
  //                           imageUrl: (controller
  //                                       .productApi[index].store.avatar.url ==
  //                                   '')
  //                               ? 'https://upload.wikimedia.org/wikipedia/vi/thumb/8/8b/Avatar_2_logo.jpg/220px-Avatar_2_logo.jpg'
  //                               : controller.productApi[index].store.avatar.url,
  //                           productName:
  //                               controller.productApi[index].product.name,
  //                           name: 'xxxx',
  //                           price: controller.productApi[index].product.newPrice
  //                               .toString()),
  //                     )),
  //           ),
  //           // ProductItem(
  //           //     imageUrl: 'assets/images/itemCart.png',
  //           //     productName: 'aaaa',
  //           //     name: 'bbbbb',
  //           //     price: '10000'),
  //           // ProductItem(
  //           //     imageUrl: 'assets/images/itemCart.png',
  //           //     productName: 'San Pham 2',
  //           //     name: 'Ten San pham demo',
  //           //     price: '250000')
  //         ],
  //       ),
  //     ),
  //   );
  // }
}

Widget buildSheet() => Container(
      padding: const EdgeInsets.all(16),
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: Get.width * (2 / 3),
                    child: TextField(
                      scrollPadding: const EdgeInsets.all(8),
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          hintText: '...',
                          contentPadding: const EdgeInsets.all(8),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14)),
                          isDense: false,
                          suffixIcon: const Icon(Icons.add)),
                    ),
                  ),
                  const SizedBox(width: 32),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      '...',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Wrap(
                spacing: 32,
                runSpacing: 8,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Nhãn Lồng',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Nhãn tiêu da bò',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Nhãn tím',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Nhãn hường chi',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              'Xong',
              style: const TextStyle(fontSize: 23),
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                minimumSize:
                    MaterialStateProperty.all<Size>(const Size(324, 40))),
          )
        ],
      ),
    );

Padding seed(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(16),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: const Color(0xffc4c4c4)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Gia cầm',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Gia súc',
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Thuỷ sản',
                    style: const TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: const Color(0xffc4c4c4)),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Gà',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Vịt',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Ngỗng',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Ngang',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Bồ câu',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        '...',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            margin: const EdgeInsets.only(top: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                color: const Color(0xffc4c4c4)),
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Wrap(
                  spacing: 32,
                  runSpacing: 8,
                  alignment: WrapAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Hồ',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Đông tảo',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Ri',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Ác',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => showModalBottomSheet(
                        context: context,
                        builder: (context) => buildSheet(),
                      ),
                      child: const Text(
                        'Hoàng gia',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () => showModalBottomSheet(
                        context: context,
                        builder: (context) => buildSheet(),
                      ),
                      child: const Text(
                        '...',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 18),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text('Kết quả tìm kiếm',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    ),
  );
}
