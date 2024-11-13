import 'package:bookspace/widgets/detail_view.dart';
import 'package:flutter/material.dart';

import '../model/place.dart';

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
                _buildSearchField(),
                const SizedBox(height: 16),
                _buildFilter(),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
           SizedBox(
            height: 650,
            child: DetailView(place: placeList,),
          )
        ],
      ),
    );
  }

  Row _buildFilter() {
    return const Row(
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
                        color: Colors.grey, // Warna default (tidak dipilih)
                        onPressed: null,
                      ),
                      IconButton(
                        icon: Icon(Icons.view_agenda, color: Colors.orange),
                        onPressed: null,
                      ),
                    ],
                  ),
                ],
              );
  }

  Container _buildSearchField() {
    return Container(
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
    );
  }
}
