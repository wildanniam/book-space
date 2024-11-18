import 'package:bookspace/model/place.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DetailPlace extends StatefulWidget {
  final Place place;
  const DetailPlace({super.key, required this.place});

  @override
  State<DetailPlace> createState() => _DetailPlaceState();
}

class _DetailPlaceState extends State<DetailPlace> {
  @override
  Widget build(BuildContext context) {
    var listImages = widget.place.listImages;
    var dataPlace = widget.place;

    @override
    void initState() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        for (var imageUrl in listImages) {
          precacheImage(NetworkImage(imageUrl), context);
        }
      });
      super.initState();
    }

    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            // ...place.listImages.map((image) => Image.network(image) )
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                  child: _imageCarousel(listImages),
                ),
                _buildTopbarImage(context),
              ],
            ),

            ListView(
              shrinkWrap: true,
              primary: false,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                  child: Column(
                    children: [
                      _buildDetailPlace(dataPlace),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          child: const Divider(
                        color: Color(0xFFDADADA),
                        thickness: 1,
                      )),
                      const SizedBox(
                        height: 16,
                      ),
                      _buildDescriptionPlace(dataPlace),
                      _buildInfoPlace(),
                      Container(
                        margin: const EdgeInsets.only(top: 28),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange),
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text(
                                    "Booking berhasil",
                                  ),
                                ),
                              );
                            },
                            child: const Text('Book Now')),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _buildInfoPlace() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 16),
            child: const Text("Info",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildMenuItem(
                icon: Icons.refresh,
                label: 'Reschedule',
                color: Colors.orange,
              ),
              _buildMenuItem(
                icon: Icons.directions_car,
                label: 'Valet Service',
                color: Colors.orange,
              ),
              _buildMenuItem(
                icon: Icons.home,
                label: 'Indoor',
                color: Colors.orange,
              ),
              _buildMenuItem(
                icon: Icons.people,
                label: '500 Orang',
                color: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: color,
            size: 24,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

Container _buildDescriptionPlace(Place dataPlace) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Deskripsi",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Text(
          dataPlace.description,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
            child: const Divider(
          color: Color(0xFFDADADA),
          thickness: 1,
        )),
      ],
    ),
  );
}

Container _buildDetailPlace(Place dataPlace) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              dataPlace.title,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              dataPlace.address,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(children: [
              Row(
                children: List.generate(5, (index) {
                  if (index < dataPlace.rating.floor()) {
                    return const Icon(Icons.star,
                        color: Colors.yellow, size: 20);
                  } else if (index < dataPlace.rating) {
                    return const Icon(Icons.star_half,
                        color: Colors.yellow, size: 20);
                  } else {
                    return const Icon(Icons.star_border,
                        color: Colors.grey, size: 20);
                  }
                }),
              ),
              const SizedBox(width: 8),
              Text('(${dataPlace.rating})',
                  style: const TextStyle(color: Colors.grey, fontSize: 16)),
            ]),
            const SizedBox(
              height: 8,
            ),
            Container(
              child: Text('${dataPlace.price}/hari',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            )
          ],
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: const Icon(Icons.open_in_new))
      ],
    ),
  );
}

SizedBox _imageCarousel(List<String> listImages) {
  return SizedBox(
      height: 350,
      child: CarouselSlider(
          items: listImages.map((image) {
            return Builder(
              builder: (BuildContext context) {
                return Image.network(
                  image,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width,
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            enableInfiniteScroll: true,
            autoPlay: true,
            height: double.infinity,
            viewportFraction: 1.0,
          )));
}

SafeArea _buildTopbarImage(BuildContext context) {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.bookmark,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
