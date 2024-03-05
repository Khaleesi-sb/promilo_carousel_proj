import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {

    TextEditingController textEditingController = TextEditingController();

    return TextField(
      controller: textEditingController,
      onChanged: (value){},
        style: const TextStyle(fontSize: 16),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: const Icon(Icons.mic_rounded),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12)),
          hintText: 'Search',
          hintStyle: const TextStyle(
           fontSize: 18
          )
        )
    );
  }
}
