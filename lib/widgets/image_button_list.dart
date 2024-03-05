import 'package:flutter/material.dart';

class ImageButtonList extends StatelessWidget {
  const ImageButtonList(
      {super.key,
      required this.imageList,
      required this.localAsset,
      this.imageHeight,
      this.imageWidth,
      this.onClick});

  final List<String> imageList;
  final bool localAsset;
  final double? imageWidth;
  final double? imageHeight;
  final void Function()? onClick;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: imageHeight ?? 30,
      child: ListView(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        children: List.generate(
          imageList.length,
          (i) => InkWell(
            onTap: onClick,
            child: Container(
              width: imageWidth ?? 50,
              height: imageHeight ?? 50,
              padding: const EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.center,
              child: localAsset
                  ? Image.asset(imageList[i])
                  : Image.network(imageList[i]),
            ),
          ),
        ),
      ),
    );
  }
}
