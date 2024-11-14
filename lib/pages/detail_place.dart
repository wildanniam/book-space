import 'package:bookspace/model/place.dart';
import 'package:flutter/material.dart';

class DetailPlace extends StatelessWidget {
  final Place place;
  const DetailPlace({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(children: [
          // ...place.listImages.map((image) => Image.network(image) )
          SizedBox(
            height:300,
            child: ListView.builder(
              
              scrollDirection: Axis.horizontal,
              itemCount: place.listImages.length,
              itemBuilder: (_, index) {
                var data = place.listImages[index];
                return Image.network(data);
            },),
          ),
          

        ],)
      ),
    );
  }
}