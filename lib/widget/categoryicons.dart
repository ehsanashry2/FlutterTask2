import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class CategoryIcon extends StatelessWidget {
  final String assetName;
  final String label;
  final Color background;

  const CategoryIcon({
    Key? key,
    required this.assetName,
    required this.label,
    required this.background,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: background,
          ),
          width: 48,
          height: 48,
          child: Center(
            child: SvgPicture.asset(
              assetName,
              width: 24,
              height: 24,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
class CategoryList extends StatelessWidget {
  final List<CategoryIcon> categories;

  const CategoryList({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        padding:const EdgeInsets.symmetric(horizontal: 24),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return categories[index];
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 42);
        },
      ),
    );
  }
}
