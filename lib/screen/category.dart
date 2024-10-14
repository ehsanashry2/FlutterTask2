import 'package:flutter/material.dart';
import 'package:shopping/screen/product_datails_page.dart';
import '../widget/product.dart';
import '../widget/search.dart';
class Category extends StatelessWidget {
  const Category({super.key});

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
          "Category",
          style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        actions: [
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
                  radius: 4.5,
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
        child: Column(
          children: [
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(left: 25),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Gadget",
                  style: TextStyle(
                    color: Color(0xff0C1A30),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Search(
                onChanged: (value) {
                },
              ),
            ),
            const SizedBox(height: 15),
            Container(
              decoration: const BoxDecoration(
                color: Color(0xffFAFAFA),
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 36),
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
                  const SizedBox(height: 36),
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
                  const SizedBox(height: 36),
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
                  const SizedBox(height: 36),
                  ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 150),
                    ),
                    child: const Text(
                      'Filter & Sorting',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 30),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
