import 'package:bookspace/model/event.dart';
import 'package:bookspace/model/service.dart';
import 'package:bookspace/pages/detail_recom_place.dart';
import 'package:flutter/material.dart';

import '../model/place.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: const Text(
          'BookSpace',
          style: TextStyle(
              fontSize: 21,
              color: Color.fromARGB(255, 248, 151, 33),
              fontWeight: FontWeight.w900),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.mail,
              size: 30,
              color: Color.fromARGB(255, 248, 151, 33),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  child: const Text(
                    "Halo,",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  child: const Text(
                    "Sujono",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(145, 243, 243, 243),
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
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: const Text(
                    'Event Service',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                EventService(),
                Container(
                  child: const Text(
                    "Event Kamu",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                EventKamu(),
                const SizedBox(
                  height: 14,
                ),
                Container(
                  child: const Text("Rekomendasi Tempat",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(
                  height: 14,
                ),
                //extract methode Rekomendasi Tempat
                RekomendasiTempat(),
              ],
            ),
          )
        ],
      ),
    );
  }

  SizedBox EventService() {
    return SizedBox(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: serviceList.length,
              itemBuilder: (BuildContext context, int index) {
                var dataService = serviceList[index];
                return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            _buildImageService(dataService),
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
                          child: _buildTitleService(dataService),
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

  Text _buildTitleService(Service dataService) {
    return Text(
      dataService.title,
      style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    );
  }

  CircleAvatar _buildImageService(Service dataService) {
    return CircleAvatar(
      radius: 35,
      backgroundImage: AssetImage(
        dataService.image,
      ),
    );
  }

  Container EventKamu() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: eventList.length,
        itemBuilder: (context, index) {
          var dataEvent = eventList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailRecomPlace()));
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
                            image: _buildImageEvent(dataEvent),
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
                            _buildDateEvent(dataEvent),
                            _buildTilteEvent(dataEvent),
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

  Text _buildTilteEvent(Event dataEvent) {
    return Text(
      dataEvent.title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Text _buildDateEvent(Event dataEvent) {
    return Text(
      dataEvent.date,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Color(0xffF89621),
      ),
    );
  }

  NetworkImage _buildImageEvent(Event dataEvent) =>
      NetworkImage(dataEvent.image);

  Container RekomendasiTempat() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: placeList.length,
        itemBuilder: (context, index) {
          var dataPlace = placeList[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailRecomPlace()));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 16),
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
                            image: _buildImagePlace(dataPlace),
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
                            _buildTitlePlace(dataPlace),
                            _buildAddressPlace(dataPlace),
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

  Text _buildAddressPlace(Place dataPlace) {
    return Text(
      dataPlace.address,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Text _buildTitlePlace(Place dataPlace) {
    return Text(
      dataPlace.title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xffF89621),
      ),
    );
  }

  NetworkImage _buildImagePlace(Place dataPlace) =>
      NetworkImage(dataPlace.listImages[0]);
}
