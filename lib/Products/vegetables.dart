import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/Itemwidget.dart';

class VegetablesView extends StatelessWidget {
  const VegetablesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      height: Get.size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ItemWidget(
                          onTap: () {},
                          image: const Image(
                            image: NetworkImage(
                                "https://thumbs.dreamstime.com/b/potatoes-basket-23360452.jpg"),
                            fit: BoxFit.cover,
                          ),
                          itemName: "Potato",
                          itemDetails: "Our Supper super is super fresh",
                          itemPrice: "Rs 150 / kg",
                          itemStock: "On Stock",
                          viewDetails: () {}),
                      ItemWidget(
                          height: 350,
                          onTap: () {},
                          image: const Image(
                            image: NetworkImage(
                                "https://live.staticflickr.com/7902/46913374901_4ed9b4e5e4_b.jpg"),
                            fit: BoxFit.cover,
                          ),
                          itemName: "Kiwi Fruit",
                          itemDetails: "Juicy and fresh kiwi fruit",
                          itemPrice: "Rs 350",
                          itemStock: "On Stock",
                          viewDetails: () {}),
                      ItemWidget(
                          onTap: () {},
                          image: const Image(
                              image: NetworkImage(
                                  "https://i.pinimg.com/originals/fd/cb/99/fdcb9949bc0b9327bc8731b940a8b0f6.jpg"),
                              fit: BoxFit.cover),
                          itemName: "Mango",
                          itemDetails: "Our fresh farm mango",
                          itemPrice: "Rs 120",
                          itemStock: "On Stock",
                          viewDetails: () {}),
                      ItemWidget(
                          onTap: () {},
                          image: const Image(
                            image: NetworkImage(
                                "https://media.istockphoto.com/photos/big-grapes-in-cold-autumn-colors-large-bunch-of-fruits-fresh-and-picture-id1288497153?k=20&m=1288497153&s=612x612&w=0&h=_XcRdq71z2curKblJKkn_6kDrGvXCjIL_Z1jnynvV5s="),
                            fit: BoxFit.cover,
                          ),
                          itemName: "Red Grapes",
                          itemDetails: "Our Supper fresh is red grapes",
                          itemPrice: "Rs 200",
                          itemStock: "On Stock",
                          viewDetails: () {}),
                      ItemWidget(
                          onTap: () {},
                          image: const Image(
                            image: NetworkImage(
                                "https://media.istockphoto.com/photos/ripe-jackfruit-picture-id1172008120?k=20&m=1172008120&s=612x612&w=0&h=7F5HuzqWtH49uRUVgRmLxoylg7HqeeyNFw3rInC7o44="),
                            fit: BoxFit.cover,
                          ),
                          itemName: "Jack Fruit",
                          itemDetails: "Delicious jack fruit available",
                          itemPrice: "Rs 130",
                          itemStock: "On Stock",
                          viewDetails: () {}),
                      ItemWidget(
                          height: 250,
                          onTap: () {},
                          image: const Image(
                            image: NetworkImage(
                                "https://w0.peakpx.com/wallpaper/1014/53/HD-wallpaper-splash-fruit-vara-water-green-summer-lime-lemon.jpg"),
                            fit: BoxFit.cover,
                          ),
                          itemName: "Green Lime",
                          itemDetails: "Green Lime available in our store",
                          itemPrice: "Rs 210",
                          itemStock: "On Stock",
                          viewDetails: () {}),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ItemWidget(
                          height: 250,
                          onTap: () {},
                          image: const Image(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcgzVyLePaTx-54sRM7a7qxdcUV8a_lMYlEtzfllH--u4IbL_RKoQFU7DdSRruLULX2UU&usqp=CAU"),
                            fit: BoxFit.cover,
                          ),
                          itemName: "Avocado",
                          itemDetails: "Our Supper Avocado is super fresh",
                          itemPrice: "Rs 350",
                          itemStock: "On Stock",
                          viewDetails: () {}),
                      ItemWidget(
                          onTap: () {},
                          image: const Image(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1579247289081-dc2a9832539c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGFwcGxlJTIwZnJ1aXR8ZW58MHx8MHx8&w=1000&q=80"),
                            fit: BoxFit.cover,
                          ),
                          itemName: "Apple",
                          itemDetails: "Our Supper Apple is super fresh",
                          itemPrice: "Rs 180",
                          itemStock: "On Stock",
                          viewDetails: () {}),
                      ItemWidget(
                          onTap: () {},
                          image: const Image(
                            image: NetworkImage(
                                "https://img.freepik.com/free-photo/minimalistic-summer-fruit-tropical-composition-half-juicy-fresh-orange-with-mirror-image-bright-orange-background-copy-space_202550-469.jpg?size=626&ext=jpg"),
                            fit: BoxFit.cover,
                          ),
                          itemName: "Super Orange",
                          itemDetails: "Our Supper Orange is super fresh",
                          itemPrice: "Rs 250",
                          itemStock: "On Stock",
                          viewDetails: () {}),
                      ItemWidget(
                          onTap: () {},
                          image: const Image(
                            image: NetworkImage(
                                "https://5.imimg.com/data5/XQ/UU/MY-26818540/red-guava-500x500.jpeg"),
                            fit: BoxFit.cover,
                          ),
                          itemName: "Guava",
                          itemDetails: "Our Supper Guava is super fresh",
                          itemPrice: "Rs 100",
                          itemStock: "On Stock",
                          viewDetails: () {}),
                      ItemWidget(
                          onTap: () {},
                          image: const Image(
                            image: NetworkImage(
                                "https://i.pinimg.com/originals/96/30/3d/96303dff7a57f6cb709304216edfc154.jpg"),
                            fit: BoxFit.cover,
                          ),
                          itemName: "Grapes",
                          itemDetails: "Our Supper Grapes is super fresh",
                          itemPrice: "Rs 250",
                          itemStock: "On Stock",
                          viewDetails: () {}),
                      ItemWidget(
                          height: 350,
                          onTap: () {},
                          image: const Image(
                            image: NetworkImage(
                                "https://media.istockphoto.com/photos/minimal-bananas-picture-id847512600?k=20&m=847512600&s=612x612&w=0&h=LwFOB4fabz6WL0zYzOd8a_6vO5ZzPyp-hRp4s0IALHg="),
                            fit: BoxFit.cover,
                          ),
                          itemName: "Super Banana",
                          itemDetails: "Our Supper Banana is super fresh",
                          itemPrice: "Rs 150",
                          itemStock: "On Stock",
                          viewDetails: () {}),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
