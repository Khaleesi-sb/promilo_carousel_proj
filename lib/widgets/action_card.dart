import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:promilo_flutter_project/widgets/custom_image_carousel.dart';

class ActionCard extends StatefulWidget {
  const ActionCard({super.key});

  @override
  State<ActionCard> createState() => _ActionCardState();
}

class _ActionCardState extends State<ActionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CustomImageCarousel(
              currentIndicatorColor: Colors.white,
              indicatorBackgroundColor: Colors.white54,
              indicatorMargin: 12,
                imageHeight: MediaQuery.of(context).size.height * 0.35,
                imageUrls: const [
                  "https://i0.wp.com/www.tusktravel.com/blog/wp-content/uploads/2022/05/5-Star-Luxury-Hotels-in-Kerala.jpg?fit=1024%2C693&ssl=1",
                  "https://theluxuryeditor.com/wp-content/uploads/2018/10/55838330.jpg",
                  "https://theluxuryeditor.com/wp-content/uploads/2022/03/77769566.jpeg",
                ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){}, icon: const Icon(Icons.file_download_outlined)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_border_rounded)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_rounded)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.fullscreen_rounded)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.star_border)),
                IconButton(onPressed: (){}, icon: const Icon(Icons.share)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
