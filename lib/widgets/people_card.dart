import 'package:flutter/material.dart';
import 'package:promilo_flutter_project/widgets/button.dart';
import 'package:promilo_flutter_project/widgets/custom_text.dart';

class PeopleCard extends StatelessWidget {
  final List<Map<String, dynamic>> data;

  const PeopleCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          final Map<String, dynamic> item = data[index];
          return Padding(
            padding: index==0 ? const EdgeInsets.only(left: 0, right: 8, top: 8, bottom: 8) : const EdgeInsets.all(8.0),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.indigo,
                          child: CircleAvatar(
                            radius: 19,
                            backgroundImage: NetworkImage(
                              item["logo"] ?? "",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: item['title'] ?? '',
                              fontSize: 14,
                              textAlign: TextAlign.start,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            CustomText(
                              text: '${item['followers'] ?? ''} Meetups',
                              textAlign: TextAlign.start,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              textColor: Colors.grey,
                            )
                          ],
                        )
                      ],
                    ),
                    const Divider(),
                    SizedBox(
                      height: 40,
                      child: Stack(
                        children: List.generate(
                          item['images'].length,
                              (index) => Positioned(
                            left: index * 30.0,
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: NetworkImage(item['images'][index]),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Button(
                          btnText: "See more",
                          onClick: () {},
                          height: 35,
                          borderRadius: 8,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
