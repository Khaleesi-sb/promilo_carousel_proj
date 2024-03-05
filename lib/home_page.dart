import 'package:flutter/material.dart';
import 'package:promilo_flutter_project/data/people_card_data.dart';
import 'package:promilo_flutter_project/description_page.dart';
import 'package:promilo_flutter_project/widgets/bottom_nav_bar.dart';
import 'package:promilo_flutter_project/widgets/custom_image_carousel.dart';
import 'package:promilo_flutter_project/widgets/custom_text.dart';
import 'package:promilo_flutter_project/widgets/image_button_list.dart';
import 'package:promilo_flutter_project/widgets/image_carousel.dart';
import 'package:promilo_flutter_project/widgets/people_card.dart';
import 'package:promilo_flutter_project/widgets/search_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(2),
            child: Divider(height: 2, color: Colors.grey,),
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
          text: "Individual Meetup",
          fontSize: 20,
        ),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.0, vertical: 16),
              child: SearchField(),
            ),
            // const ImageCarousel(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: CustomImageCarousel(
                  isAutoPlay: true,
                  imageUrls: [
                "https://www.unic.ac.cy/wp-content/uploads/2023/02/P20699-UNIC-Web-Cover-v2.jpg",
                "https://www.classcentral.com/report/wp-content/uploads/2021/01/conferences-digital-ed.png",
                "https://www.pbisrewards.com/wp-content/uploads/8-tips-education-conferences.jpg"
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomText(text: "Trending Popular People", textAlign: TextAlign.start,),
                  ),
                  PeopleCard(data: data)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26.0,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: CustomText(text: "Trending Popular Meetups", textAlign: TextAlign.start,),
                  ),
                  ImageButtonList(
                    onClick: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DescriptionPage()),
                      );
                    },
                    localAsset: false,
                    imageHeight: 150,
                    imageWidth: 150,
                    imageList: const [
                      "https://www.wcl.american.edu/wcl-american-edu/assets/Image/people/faculty/md/abrams.jpg",
                      "https://www.wcl.american.edu/wcl-american-edu/assets/Image/people/faculty/md/nicola.jpg",
                      "https://cse.iith.ac.in/assets/images/profiles/Antony-Franklin.jpg",
                      "https://webcampus.bmsce.in/assets/faculty/EC/Dr_Akhila_S_.JPG"
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
