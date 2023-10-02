import 'package:flutter/material.dart';
class BuildtTop extends StatelessWidget {
  const BuildtTop({
    super.key,
   
  });

   final double coverHeight=250;
  final double profileheight=80;
  
  @override
  Widget build(BuildContext context) {
     final postion = coverHeight-profileheight/2-5;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.centerLeft,
      children: [
         Container(
          padding: EdgeInsets.only(bottom: profileheight/6),
          child: BuildCover(coverHeight: coverHeight)
          ),
        Positioned(
          top:postion ,
          left: 25,
          
          child: BuildProfile(profileheight: profileheight),
        ),
        Positioned(
          bottom: postion-25,
          left: 375,
          child: const BackButton(),
        )
      ],
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
    onPressed: (){},
     icon: const Icon(Icons.arrow_forward,color: Colors.grey,),
     );
  }
}

class BuildProfile extends StatelessWidget {
  const BuildProfile({
    super.key,
    required this.profileheight,
  });

  final double profileheight;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: profileheight/2,
      backgroundImage:const NetworkImage('https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80')
    );
  }
}

class BuildCover extends StatelessWidget {
  const BuildCover({
    super.key,
    required this.coverHeight,
  });

  final double coverHeight;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
     borderRadius: const BorderRadiusDirectional.only(
       bottomStart: Radius.circular(20),
       bottomEnd: Radius.circular(20),

     ),
     child: Image.network('https://images.unsplash.com/photo-1695653420644-ab3d6a039d53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80',
     width: double.infinity,
     height: coverHeight,
     fit: BoxFit.cover,
     ),
        );
  }
}