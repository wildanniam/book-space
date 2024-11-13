import 'package:bookspace/list_data.dart';
import 'package:bookspace/pages/detail_recom_place.dart';
import 'package:flutter/material.dart';

class EventScroll extends StatelessWidget {
  const EventScroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: eventData.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailRecomPlace()));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(eventData[index]['image'] ?? ''),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              eventData[index]['date'] ?? '',
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffF89621),
                              ),
                            ),
                            Text(
                              eventData[index]['title'] ?? '',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
