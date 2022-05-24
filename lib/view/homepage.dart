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
    return SafeArea(
      child: Scaffold(
        drawer: const Drawer(),
        body: SingleChildScrollView(
          child: SizedBox(
              width: Get.size.width,
              height: Get.size.height,
              child: Column(
                children: [],
              )),
        ),
      ),
    );
  }
}
