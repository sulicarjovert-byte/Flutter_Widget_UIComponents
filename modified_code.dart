import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ModifiedCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue, // changed color
        title: Text("My Image Slider"), // changed title
        centerTitle: true,
      ),
      body: ListView(
        children: [
          CarouselSlider(
            items: [

              // 1st Image with caption
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: DecorationImage(
                        image: NetworkImage("https://images.pexels.com/photos/358070/pexels-photo-358070.jpeg?cs=srgb&dl=automobile-automotive-car-358070.jpg&fm=jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Text(
                        "First Image",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),

              // 2nd Image
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: NetworkImage("https://hips.hearstapps.com/hmg-prod/images/scenic-view-of-waterfall-in-forest-newton-abbot-royalty-free-image-1681937445.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // 3rd Image
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0), //increased corner radius
                  image: DecorationImage(
                    image: NetworkImage("https://static.vecteezy.com/system/resources/thumbnails/027/466/286/small_2x/ai-generative-beautiful-tropical-pink-frangipani-flowers-and-multicolored-butterfly-on-natural-greenyellow-background-closeup-outdoors-elegant-refined-image-of-beauty-of-nature-photo.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

            ],
            options: CarouselOptions(
              height: 200.0, //changed height
              enlargeCenterPage: false,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.9, //made slider wider
            ),
          ),
        ],
      ),
    );
  }
}
