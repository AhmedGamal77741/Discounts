import 'package:discounts/bar.dart';
import 'package:discounts/buildbottom.dart';
import 'package:discounts/locations.dart';
import 'package:flutter/material.dart';
import 'bulidtop.dart';
import 'info.dart';

void main() => runApp(const MaterialApp(
  home:Profile() ,
  debugShowCheckedModeBanner: false,
)); 
 


class Profile extends StatelessWidget {
  const Profile({super.key});

 
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
      body:ListView(
        padding: const EdgeInsets.all(0),
        children: const [
          BuildtTop(),
          StoreInfo(),
          TBar(),
          Locations(),
          BuildBottom()
          
        ],
      )


    );
  }
}

