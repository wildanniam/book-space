import 'package:bookspace/list_data.dart';
import 'package:flutter/material.dart';

import 'favorite_widget.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key});

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: recomPlace.length,
              itemBuilder: (context, index) {
                return Container(
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
                                    recomPlace[index]['image'] ?? ''),
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
                                        recomPlace[index]['name'] ?? '',
                                        style: const TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        recomPlace[index]['location'] ?? '',
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: const Color(0xffF89621),
                                  child: IconButton(
                                    icon: const Icon(Icons.arrow_forward_ios),
                                    color: Colors.white,
                                    onPressed: () {},
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
                );
              },
            );
  }
}