import 'package:bookspace/list_data.dart';
import 'package:flutter/material.dart';

class EventService extends StatelessWidget {
  const EventService({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: eventServices.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(
                                eventServices[index]['image'] ?? '',
                              ),
                            ),
                            Container(
                              width:
                                  70, // Diameter lingkaran harus sesuai dengan radius CircleAvatar * 2
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.orange
                                    .withOpacity(0.3), // Overlay oranye
                                shape: BoxShape.circle,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            eventServices[index]['title'] ?? '',
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
