import 'package:bazaar/Products/fruits.dart';
import 'package:bazaar/Products/meat.dart';
import 'package:bazaar/Products/nut&seeds.dart';
import 'package:bazaar/Products/pickles.dart';
import 'package:bazaar/Products/spices.dart';
import 'package:bazaar/Products/vegetables.dart';
import 'package:bazaar/utili/appColor.dart';
import 'package:bazaar/widget/heightSpace.dart';
import 'package:bazaar/widget/mytextformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  var image;

  @override
  void initState() {
    tabController = TabController(length: 6, vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List ads = [
      {
        "id": 1,
        "adsTitle": "Rs. 500 Cash Back",
        "adsSubtitle": "On first order, min of Rs. 2500",
        "image":
            "https://5.imimg.com/data5/WQ/JS/KG/SELLER-11193145/fancy-men-t-shirt-500x500.jpg"
      },
      {
        "id": 2,
        "adsTitle": "Rs. 150 \n Cash Back",
        "adsSubtitle": "On first order, min of Rs. 1000",
        "image": "https://cdn-icons-png.flaticon.com/512/6633/6633099.png"
      },
      {
        "id": 3,
        "adsTitle": "Rs. 225 \n Cash Back",
        "adsSubtitle": "On first order, min of Rs. 1500",
        "image": "https://cdn-icons-png.flaticon.com/512/6633/6633099.png"
      },
      {
        "id": 4,
        "adsTitle": "Rs. 500 \n Cash Back",
        "adsSubtitle": "On first order, min of Rs. 2500",
        "image": "https://cdn-icons-png.flaticon.com/512/6633/6633099.png"
      },
    ];
    return DefaultTabController(
      length: 6,
      child: SafeArea(
        child: Scaffold(
          drawer: const Drawer(),
          body: SingleChildScrollView(
            child: SizedBox(
              width: Get.size.width,
              height: Get.size.height,
              child: Column(
                children: [
                  Container(
                    color: AppColor.kSecondary.withOpacity(0.2),
                    height: Get.size.height,
                    width: Get.size.width,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColor.kPrimary,
                          ),
                          height: 395,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.menu,
                                    color: AppColor.kLight,
                                  ),
                                  Expanded(
                                      child: Container(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Home",
                                      style: TextStyle(
                                          color: AppColor.kLight,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  )),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(
                                        Icons.shopping_cart,
                                        color: AppColor.kLight,
                                      ))
                                ],
                              ),
                              const HightSpace(),
                              MyTextFormField(
                                btnHeight:
                                    const EdgeInsets.symmetric(vertical: 20),
                                prefixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.search,
                                    color: AppColor.kPrimary,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 180,
                                width: Get.size.width,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    shrinkWrap: true,
                                    itemCount: ads.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return SizedBox(
                                        width: 380,
                                        child: Card(
                                          color: AppColor.kLight,
                                          elevation: 0,
                                          shadowColor: AppColor.kPrimary,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  child: Image.network(
                                                    ads[index]['image'],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Expanded(
                                                child: SizedBox(
                                                  width: Get.size.width,
                                                  height: Get.size.height,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        ads[index]['adsTitle'],
                                                        style: TextStyle(
                                                          fontSize: 30,
                                                          color:
                                                              AppColor.kPrimary,
                                                          fontWeight:
                                                              FontWeight.w800,
                                                        ),
                                                      ),
                                                      Text(
                                                          ads[index][
                                                              'adsSubtitle'],
                                                          style: TextStyle(
                                                              color: AppColor
                                                                  .kSecondary,
                                                              fontSize: 18)),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TabBar(
                                  isScrollable: true,
                                  indicatorColor: AppColor.kLight,
                                  indicatorWeight: 5,
                                  indicator: BoxDecoration(
                                      color: AppColor.kSecondary,
                                      borderRadius: BorderRadius.circular(10)),
                                  labelStyle: TextStyle(
                                      color: AppColor.kLight, fontSize: 18),
                                  tabs: const [
                                    Tab(text: "Fruits"),
                                    Tab(text: "Vegetables"),
                                    Tab(text: "Meat"),
                                    Tab(text: "Spices"),
                                    Tab(text: "Pickles"),
                                    Tab(text: "Nut & Seeds"),
                                  ]),
                              const SizedBox(
                                height: 7,
                              ),
                              const Expanded(
                                child: TabBarView(
                                  children: [
                                    FruitsView(),
                                    VegetablesView(),
                                    MeatView(),
                                    SpicesView(),
                                    PicklesView(),
                                    NutsView(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
