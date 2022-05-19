import 'package:bazaar/view/widget/heightSpace.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utili/appColor.dart';

class ItemWidget extends StatelessWidget {
  final double height;
  final Function() onTap;
  final double shadow;
  final Image image;
  final String itemName;
  final String itemDetails;
  final String itemPrice;
  final String itemStock;
  final Function() viewDetails;

  const ItemWidget({
    this.height = 300,
    required this.onTap,
    this.shadow = 2,
    required this.image,
    required this.itemName,
    required this.itemDetails,
    required this.itemPrice,
    required this.itemStock,
    required this.viewDetails,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.kSecondary.withOpacity(0.2),
      height: height,
      width: Get.size.width,
      child: InkWell(
        onTap: onTap,
        child: Stack(
          children: [
            SizedBox(
              height: Get.size.height,
              width: Get.size.width,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                elevation: shadow,
                shadowColor: AppColor.kPrimary,
                clipBehavior: Clip.antiAlias,
                child: Stack(
                  children: [
                    SizedBox(
                      height: Get.size.height,
                      width: Get.size.width,
                      child: image,
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        color: AppColor.kLight.withOpacity(0.9),
                        height: 110,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: ListTile(
                                textColor: AppColor.kDark,
                                title: Text(
                                  itemName,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  itemDetails,
                                  style: TextStyle(
                                      fontSize: 13, color: AppColor.kPrimary),
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                textColor: AppColor.kDark,
                                title: Text(
                                  itemPrice,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                subtitle: Text(
                                  itemStock,
                                  style: TextStyle(
                                      fontSize: 14, color: AppColor.kPrimary),
                                ),
                                trailing: TextButton(
                                    onPressed: viewDetails,
                                    child: Text(
                                      "View Details",
                                      style:
                                          TextStyle(color: AppColor.kPrimary),
                                    )),
                              ),
                            ),
                            const HightSpace()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
