import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          hintText: "Course name, Category",
          suffixIcon: InkWell(
            onTap: () {},
            child: Image.asset("assets/icons/search_icon.png"),
          ),
        ),
      ),
    );
  }
}
