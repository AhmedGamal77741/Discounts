import 'package:discounts/cards/locationcards.dart';
import 'package:flutter/material.dart';
class Locations extends StatelessWidget {
  const Locations({super.key});

  @override
  Widget build(BuildContext context) {
    List <LocationCard> cards =[ const LocationCard(branch: 'El-Maadi Branch',location:'McDonald\'s near Maadi, Egypt' ),
    const LocationCard(branch: 'El-Maadi Branch',location:'McDonald\'s near Maadi, Egypt'),
          ];
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Locations'),
          const SizedBox(height: 10,),
          ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
      separatorBuilder:  (context, index) => const SizedBox(
        width: 10,
      ),
      itemCount: cards.length,
      padding: const EdgeInsets.all(12),
      itemBuilder: (context,index)=> cards[index]
      )
        ],
    
      ),
    );
  }
  
}

