import 'package:bookspace/pages/detail_place.dart';
import 'package:flutter/material.dart';

import '../model/place.dart';
import '../pages/detail_recom_place.dart';
import 'favorite_widget.dart';

class DetailView extends StatefulWidget {
  final List<Place> place;
  const DetailView({super.key, required this.place});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: widget.place.length,
              itemBuilder: (context, index) {
                var data = widget.place[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailPlace(place: data,)));
                  },
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                    width: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      data.listImages[0]),
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
                  
                            SizedBox(
                              height: 200,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                        data.title,
                                          style: const TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                        data.address,
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Color(0xffF89621),
                                    child: InkWell(
                                      child: Icon(Icons.arrow_forward_ios, color: Colors.white,),
                                    ),
                                  )
                                ],
                              ),
                            ), 
                            const Positioned(top:0, right:0, child: FavoriteButton(),),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
  }
}