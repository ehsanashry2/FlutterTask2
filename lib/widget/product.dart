import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;
  final VoidCallback onTap;

  const ProductCard({
    Key? key,
    required this.title,
    required this.price,
    required this.imagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        height: 242,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(color: Colors.grey.shade300, blurRadius: 5),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: 170,
                  height: 150,
                  child: Image.asset(imagePath, height: 100),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      price,
                      style: const TextStyle(color: Colors.red),
                    ),
                    const SizedBox(height: 5),
                    const Row(
                      children: [
                        Icon(Icons.star, color: Color(0xffFFC120), size: 16),
                        SizedBox(width: 4),
                        Text('4.6'),
                        SizedBox(width: 4),
                        Text('86 Reviews'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
