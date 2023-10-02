import 'package:flutter/material.dart';
class CouponCard extends StatelessWidget {
  final String url ;
  final String ttl ;
  final String details ;
  final String discount ;
  final String days ;
  const CouponCard({super.key, required this.url,required this.ttl,required this.details,required this.discount,required this.days});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.all(11),
      height:280,
      width: 230,
      decoration:  const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadiusDirectional.only(
       bottomStart: Radius.circular(25),
       bottomEnd: Radius.circular(25),
      ), 
      boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ], ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
     borderRadius: const BorderRadiusDirectional.only(
       bottomStart: Radius.circular(20),
       bottomEnd: Radius.circular(20),

     ),
     child: Image.network('https://images.unsplash.com/photo-1695653420644-ab3d6a039d53?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2069&q=80',
     width: double.infinity,
     height: 175,
     fit: BoxFit.cover,
     ),
        ),
        const SizedBox(height: 10,),
        Text(ttl),
        const SizedBox(height: 10,),
        Text(details),
         const SizedBox(height: 10,),
          Row(
          children: [
            Text('$discount%'),
            const SizedBox(width: 5,),
            const Text('OFF'),
            const SizedBox(width:50),
            Text('Ends in $days Days'),
          ],
         )

                  ],
                ),
    );
  }
}