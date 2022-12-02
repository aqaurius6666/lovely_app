import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: ImageSlideshow(
            indicatorColor: Colors.blue,
            onPageChanged: (value) {
              debugPrint('Page changed: $value');
            },
            autoPlayInterval: 3000,
            isLoop: true,
            children: [
              Image.asset(
                'assets/images/image_1.jpeg',
              ),
              Image.asset(
                'assets/images/image_1.jpeg',
              ),
              Image.asset(
                'assets/images/image_1.jpeg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
