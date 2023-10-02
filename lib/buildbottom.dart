import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
class BuildBottom extends StatelessWidget {
  
  const BuildBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20,0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         ElevatedButton(
          onPressed: (){},
          style: ElevatedButton.styleFrom(
        backgroundColor: Colors.yellow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      ),
      child:const Text('Review Store'),
    
           ),
           const SizedBox(height:20),
           Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 3),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   const SizedBox(height: 10,),
                  const Text('Follow the store'),
                  const SizedBox(height: 10,),
                  TextButton.icon(onPressed: _launchFace, icon: const Icon(Icons.facebook), label: const Text('Facebook')),
                  
                  TextButton.icon(onPressed: _launchX, icon: const FaIcon(FontAwesomeIcons.twitter), label: const Text('Twitter')),
                ],
              ),
            ),
           )
        ],
    
      ),
    );
  }
  Future<void> _launchFace() async {
  String url ='https://www.facebook.com/McDonaldsEgypt';
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}
Future<void> _launchX() async {
  String url ='https://twitter.com/McDonalds';
  if (!await launchUrl(Uri.parse(url))) {
    throw Exception('Could not launch $url');
  }
}

}