import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyFarm',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FarmHouse'),
      ),
      body: Column(
        children: [
          SizedBox(height: 120),
          CarouselSlider(
            items: [
              'assets/sliderImage/farmhouse1.jpg',
              'assets/sliderImage/farmhouse2.jpg',
              'assets/sliderImage/farmhouse3.jpg',
              'assets/sliderImage/farmhouse4.jpg',
              'assets/sliderImage/farmhouse5.jpg',
              'assets/sliderImage/farmhouse6.jpg',
              'assets/sliderImage/farmhouse7.jpg',
              'assets/sliderImage/farmhouse8.jpg',
              'assets/sliderImage/farmhouse9.jpg',
              'assets/sliderImage/farmhouse10.jpg',
              'assets/sliderImage/farmhouse11.jpg',
              'assets/sliderImage/farmhouse12.jpg',
              'assets/sliderImage/farmhouse13.jpg',
            ]
                .map(
                  (e) => Card(
                    elevation: 1.2,
                    margin: const EdgeInsets.only(left: 5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12, width: 0.75),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          e,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                )
                .toList(),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.2,
              autoPlayAnimationDuration: const Duration(seconds: 8),
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayCurve: Curves.decelerate,
              autoPlay: true,
              aspectRatio: 1.333,
            ),
          ),
        ],
      ),
    );
  }
}
