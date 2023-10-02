import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class LocationCard extends StatelessWidget {
  final String branch;
  final String location;
  const LocationCard({super.key,required this.branch,required this.location});

  @override
  Widget build(BuildContext context) {
    return  Card(
      color: Colors.white,
       shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(15.0),
      ), 
        child:ListTile(
          leading: const Icon(Icons.location_pin),
          title:   Text(branch),
          trailing: IconButton(onPressed: (){ MapsLauncher.launchQuery(
                    location);}, icon: const Icon(Icons.arrow_forward_ios))
           
        )
      
      
    );
  }
}