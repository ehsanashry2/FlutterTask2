import 'package:flutter/material.dart';
class Search extends StatelessWidget{
  const Search ({super.key,this.onChanged});
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 56,
        width: double.infinity,
        child: TextField(
            onChanged: onChanged,
            decoration: InputDecoration(
              hintText: 'Search Product Name',
              contentPadding:EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              hintStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500) ,
              filled: true,
              border:OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ) ,
               focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide.none),
              fillColor: Color(0xffFAFAFA),
              suffixIcon: Icon(
                Icons.search,
                color: Color(0xff0c1A30),
              ),)
        ));
  }

}