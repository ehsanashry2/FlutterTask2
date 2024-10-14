import 'package:flutter/material.dart';
class AddItem extends StatelessWidget {
  final double height;
  final double width;
  final String imagePath;
  const AddItem({
    Key? key,
    required this.imagePath,
    this.height = 150,
    this.width = 315,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
class Advertisements extends StatelessWidget{
  const Advertisements ({super.key,this.onChanged});
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection:Axis.horizontal ,
        itemBuilder: (context,index)=> const AddItem(imagePath: 'assets/photo1.png',),
        separatorBuilder: (context,index)=> const SizedBox(width: 16),
        itemCount: 5,
        padding:const EdgeInsets.symmetric(horizontal: 24),
      ),

    );
  }

}