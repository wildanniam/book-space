import 'package:bookspace/widgets/detail_view.dart';
import 'package:flutter/material.dart';
import 'package:bookspace/list_data.dart';

class DetailRecomPlace extends StatefulWidget {
  const DetailRecomPlace({super.key});

  @override
  State<DetailRecomPlace> createState() => _DetailRecomPlaceState();
}

class _DetailRecomPlaceState extends State<DetailRecomPlace> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on, color: Colors.red),
            Text("Bandung", style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(145, 220, 218, 218),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              hintText: 'Search',
                              border: InputBorder.none),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Filter",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            InkWell(
                              child: SizedBox(
                                width: 20,
                                height: 20,
                                child: Icon(Icons.arrow_drop_down),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            IconButton(
                              icon: Icon(Icons.grid_view),
                              color:
                                  Colors.grey, // Warna default (tidak dipilih)
                              onPressed: null,
                            ),
                            IconButton(
                              icon:
                                  Icon(Icons.view_agenda, color: Colors.orange),
                              onPressed: null,
                            ),
                          ],
                        ),
                      ]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 650,
            child: ListView.builder(
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
                        alignment: Alignment.bottomLeft,
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
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                          )
                        ],
                      ),
                    ],
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
