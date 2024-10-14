import 'package:flutter/material.dart';

import '../main.dart';

class ProductDetailPage extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;

  const ProductDetailPage({
    Key? key,
    required this.title,
    required this.price,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Details Product",
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            alignment: Alignment.center,
            icon: const Icon(Icons.arrow_forward_outlined, color: Colors.black, size: 20),
            onPressed: () {},
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined, color: Colors.black, size: 20),
                onPressed: () {
                  // Add your onPressed code here
                },
              ),
              const Positioned(
                right: 15,
                top: 17,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Color(0xffFE3A30),
                ),
              ),
            ],
          ),
        ],
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xffFAFAFA),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: 425,
                height: 300,
                child: Image.asset(imagePath),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                price,
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const Row(
                children: [
                  Icon(Icons.star, color: Color(0xffFFC120), size: 16),
                  SizedBox(width: 4),
                  Text('4.6'),
                  SizedBox(width: 4),
                  Text('86 Reviews'),
                ],
              ),
              const Divider(),
              const SizedBox(height: 29),
              Container(
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/photo2.png',
                        width: 45,
                        height: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shop Larson Electronic",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 13,
                                color: Color(0xff0C1A30)),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 5),
                          Text(
                            "Official Store",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_outlined, color: Color(0xff838589)),
                  ],
                ),
              ),
              const Divider(),
              const SizedBox(height: 20),
              const Text(
                "Description Product",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
              const SizedBox(height: 15),
              const Text(
                "The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              const SizedBox(height: 15),
              const Text(
                "The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers.",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      onPressed: () {},
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Added',
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(Icons.favorite, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      child: const Text(
                        'Add to Cart',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyApp()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
