import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class CustomImageCarousel extends StatelessWidget {
  const CustomImageCarousel(
      {super.key,
      required this.imageUrls,
      this.isAutoPlay,
      this.indicatorMargin,
      this.imageHeight,
      this.currentIndicatorColor,
      this.indicatorBackgroundColor});

  final List<String> imageUrls;
  final bool? isAutoPlay;
  final double? indicatorMargin;
  final double? imageHeight;
  final Color? indicatorBackgroundColor;
  final Color? currentIndicatorColor;

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel(
      items: imageUrls.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    height: imageHeight ??
                        MediaQuery.of(context).size.height * 0.32,
                    width: MediaQuery.of(context).size.width,
                    url,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: isAutoPlay ?? false,
        autoPlayInterval: const Duration(seconds: 3),
        viewportFraction: MediaQuery.of(context).size.width > 800.0 ? 0.8 : 1.0,
        height: MediaQuery.of(context).size.height * 0.35,
        indicatorMargin: indicatorMargin ?? 5.0,
        enableInfiniteScroll: true,
        slideIndicator: CircularSlideIndicator(
            indicatorBackgroundColor:
                indicatorBackgroundColor ?? Colors.black26,
            currentIndicatorColor: currentIndicatorColor ?? Colors.black45),
      ),
    );
  }
}
