import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:promilo_flutter_project/widgets/action_card.dart';
import 'package:promilo_flutter_project/widgets/custom_image_carousel.dart';
import 'package:promilo_flutter_project/widgets/custom_text.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(2),
          child: Divider(
            height: 2,
            color: Colors.grey,
          ),
        ),
        leading: IconButton(
          style: IconButton.styleFrom(
              padding: const EdgeInsets.only(left: 26)
          ),
          onPressed: (){
            Navigator.pop(context);
          }, icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const CustomText(
          text: "Description",
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const CustomImageCarousel(imageUrls: [
              //   "https://i0.wp.com/www.tusktravel.com/blog/wp-content/uploads/2022/05/5-Star-Luxury-Hotels-in-Kerala.jpg?fit=1024%2C693&ssl=1",
              //   "https://theluxuryeditor.com/wp-content/uploads/2018/10/55838330.jpg",
              //   "https://theluxuryeditor.com/wp-content/uploads/2022/03/77769566.jpeg",
              // ]),
              const ActionCard(),
              const SizedBox(
                height: 8,
              ),
              const CustomText(
                text: "Actor Name",
                fontSize: 18,
              ),
              const SizedBox(
                height: 4,
              ),
              const CustomText(
                text: "Indian Actress",
                fontSize: 12,
                textColor: Colors.grey,
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    size: 12,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CustomText(
                    text: "Duration 20 mins",
                    fontSize: 12,
                    textColor: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    size: 12,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  CustomText(
                    text: "Total average fees ₹9,999",
                    fontSize: 12,
                    textColor: Colors.grey,
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomText(
                text: "About",
                fontSize: 18,
              ),
              const CustomText(
                text:
                    "There are many variations of passages of Lorem Ipsum available, "
                    "but the majority have suffered alteration in some form, by injected humour, "
                    "or randomised words which don't look even slightly believable. If you are "
                    "going to use a passage of Lorem Ipsum, "
                    "you need to be sure there isn't anything embarrassing hidden in the middle of text. '"
                    "All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, "
                    "making this the first true generator on the Internet. "
                    "It uses a dictionary of over 200 Latin words, combined with a handful of model sentence "
                    "structures, to generate Lorem Ipsum which looks reasonable. "
                    "The generated Lorem Ipsum is therefore always free from repetition, injected humour, "
                    "or non-characteristic words etc.",
                fontSize: 12,
                fontWeight: FontWeight.normal,
                textColor: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const CustomText(
                        text: "See more",
                        textColor: Colors.indigo,
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
