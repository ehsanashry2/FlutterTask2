import 'package:flutter/material.dart';
import 'package:shopping/screen/product_datails_page.dart';
import 'package:shopping/widget/advertisements.dart';
import 'package:shopping/widget/categoryicons.dart';
import '../widget/product.dart';
import '../widget/search.dart';
import 'category.dart';
class Home  extends StatelessWidget {
  const Home ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Mega Mall",
          style: TextStyle(color: Color(0xff3669C9), fontSize: 18,fontWeight: FontWeight.w700),
        ),
        actions: [
          Stack(
            children:[ IconButton(
              alignment: Alignment.center,
              icon: const Icon(Icons.notifications_none, color: Colors.black,size: 20,),
              onPressed: () {},
            ),
              const Positioned(
                right: 16,
                top: 13,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Color(0xffFE3A30),
                ),
              ),
            ]
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
      body:  SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Search(
                onChanged: (value){

                },
              ),
            ),
            const SizedBox(height: 30),
            const Advertisements(),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 25,right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.black),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(fontSize: 12, color: Color(0xff3669C9),fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: CategoryList(
                categories: [
                  CategoryIcon(assetName: 'assets/SVG/Vector.svg', label: 'Foods', background: Color(0xffE4F3EA)),
                  CategoryIcon(assetName: 'assets/SVG/Fruits.svg', label: 'Gift', background: Color(0xffFFECE8)),
                  CategoryIcon(assetName: 'assets/SVG/Eggs.svg', label: 'Fashion', background: Color(0xffFFF6E4)),
                  CategoryIcon(assetName: 'assets/SVG/Meat.svg', label: 'Gadget', background: Color(0xffF1EDFC)),
                  CategoryIcon(assetName: 'assets/SVG/Meat.svg', label: 'Compute', background: Color(0xffE4F3EA)),
                ],
              ),
            ),
            const SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Featured Product',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Category()),
                      );
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff3669C9),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ProductCard(
                  title: 'TMA-2 HD Wireless',
                  price: 'Rp. 1.500.000',
                  imagePath: 'assets/Dummy Product.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductDetailPage(
                          title: 'TMA-2 HD Wireless',
                          price: 'Rp. 1.500.000',
                          imagePath: 'assets/Dummy Product.png',
                        ),
                      ),
                    );
                  },
                ),
                ProductCard(
                  title: 'TMA-2 HD Wireless',
                  price: 'Rp. 1.500.000',
                  imagePath: 'assets/Dummy Product-2.png',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductDetailPage(
                          title: 'TMA-2 HD Wireless',
                          price: 'Rp. 1.500.000',
                          imagePath: 'assets/Dummy Product-2.png',
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: AddItem(
                width: MediaQuery.of(context).size.width, imagePath: 'assets/photo2.png',

              ),
            ),
          ],
        ),
      ),
    );
  }
}
