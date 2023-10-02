import 'package:flutter/material.dart';
import 'cards/infocards.dart';
class StoreInfo extends StatelessWidget {
  const StoreInfo({super.key});

  @override
  Widget build(BuildContext context) {
 
    
    return  Padding(
      padding:  const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
             const Align(
              alignment: Alignment.topRight,
              child: SalePercent(),
              ),
              const SizedBox(height: 10,),
              Container(
                height: 35,
                width: 300,
                decoration:  BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark)),
                    const SizedBox(width: 50,),
                    const Text('Macdonals Title'),
                    
                  ],
                ),
              ),
              const SizedBox(height: 10,),
                     const Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children:[
                        Icon(Icons.location_pin,size: 15,),
                        SizedBox(width: 3,),
                        Text('6 of october branch'),
                        
                      ],
                    ),
                    const SizedBox(height: 15,),
                    InfoCard(title: 'Email',subTitle: 'Mac@Sha3booony.Dev',btn: const Icon(Icons.mail),url: Uri(scheme: 'mailto',
                      path: 'codoweb.tech@gmail.com',
                      query: 'subject=Hello&body=Test',),),
                    const SizedBox(height: 10,),
                    InfoCard(title: 'Communicate via mobile',subTitle: '+20 016 837 1514',btn: const Icon(Icons.call),url:Uri.parse('tel:+200168371514'), ),

        ],
      ),
    );
  }
}

class SalePercent extends StatelessWidget {
  const SalePercent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('up to 48% Sale'),
        Row(
       mainAxisAlignment: MainAxisAlignment.end,
          children: [
          Icon(Icons.star,color: Colors.grey,),
          Icon(Icons.star,color: Colors.grey,),
          Icon(Icons.star,color: Colors.grey,),
          Icon(Icons.star,color: Colors.grey,),
          Icon(Icons.star,color: Colors.grey,),
          SizedBox(width: 5,),
          Text('(0)')
          ],
        )
      ]
    );
  }
}

