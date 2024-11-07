import 'package:flutter/material.dart';
import 'package:bookspace/list_data.dart';


class DetailRecomPlace extends StatelessWidget {
  const DetailRecomPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on, color: Colors.red),
            Text("Bandung", style: TextStyle(color: Colors.black)),
          ],
        )
      ),
    );
  }
}