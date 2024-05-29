import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'
    show CarouselOptions, CarouselSlider;

class CarouselSliderWidget extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;
  const CarouselSliderWidget(
      {super.key,
      this.image1 = "carousal1.png",
      this.image2 = "carousal1.png",
      this.image3 = "carousal3.png"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        CarouselSlider(
          items: [
            Column(children: [
              Image.asset("assets/images/$image1",
                  width: double.maxFinite, fit: BoxFit.fill),
              const Text(
                "Auto-track orders with",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
              const Text(
                "email sync",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
            ]),
            Column(children: [
              Image.asset("assets/images/$image2",
                  width: double.maxFinite, fit: BoxFit.fill),
              const Text(
                "Get real time delivery",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
              const Text(
                "updates",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
            ]),
            Column(children: [
              Image.asset("assets/images/$image3",
                  width: double.maxFinite, fit: BoxFit.fill),
              const Text(
                "Data protection is our",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
              const Text(
                "priority",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              ),
            ]),
          ],
          options: CarouselOptions(
            height: 350,
            enlargeCenterPage: true,
            aspectRatio: 9 / 16,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 200),
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            viewportFraction: 1,
          ),
          disableGesture: false,
        ),
      ]),
    );
  }
}

class CarouselLoginSliderWidget extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;
  const CarouselLoginSliderWidget(
      {super.key,
      this.image1 = "carousal1.png",
      this.image2 = "carousal1.png",
      this.image3 = "carousal3.png"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        CarouselSlider(
          items: [
            Column(children: [
              Image.asset("assets/images/$image1",
                  width: double.maxFinite, fit: BoxFit.fill),
              // const Text(
              //   "Auto-track orders with",
              //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              // ),
              // const Text(
              //   "email sync",
              //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              // ),
            ]),
            Column(children: [
              Image.asset("assets/images/$image2",
                  width: double.maxFinite, fit: BoxFit.fill),
              // const Text(
              //   "Get real time delivery",
              //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              // ),
              // const Text(
              //   "updates",
              //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              // ),
            ]),
            Column(children: [
              Image.asset("assets/images/$image3",
                  width: double.maxFinite, fit: BoxFit.fill),
              // const Text(
              //   "Data protection is our",
              //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              // ),
              // const Text(
              //   "priority",
              //   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),
              // ),
            ]),
          ],
          options: CarouselOptions(
            height: 325,
            enlargeCenterPage: true,
            aspectRatio: 9 / 16,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(seconds: 4),
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            viewportFraction: 1,
          ),
          disableGesture: false,
        ),
      ]),
    );
  }
}
