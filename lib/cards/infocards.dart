import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class InfoCard extends StatelessWidget {
 final String title;
 final String subTitle;
 final Icon btn;
 final Uri url;
 

  const InfoCard({super.key,required this.title,required this.subTitle ,required this.btn,required this.url});

  @override
  Widget build(BuildContext context) {
    return   Card(
      color: Colors.white,
       shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(15.0),
      ), 
        child:ListTile(
          title:   Text('$title :'),
          subtitle:   Text('\t\t\t\t$subTitle'),
          trailing: IconButton(onPressed: _launchUrl, icon: btn)
           
        )
      
      
    );
  }
  Future<void> _launchUrl() async {
  
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
}