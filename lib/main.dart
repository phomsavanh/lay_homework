import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> listImages = [
    'https://www.factroom.ru/wp-content/uploads/2019/04/5-osobennostej-klimata-pitera-o-kotoryh-vy-dolzhny-znat-esli-sobiraetes-syuda-priekhat.jpg',
    'https://cdn.flixbus.de/2018-01/munich-header-d8_0.jpg',
    'https://image.shutterstock.com/image-photo/butterfly-grass-on-meadow-night-260nw-1111729556.jpg',
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=1',
    'https://picsum.photos/250?image=4',
  ];

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ໜ້າຫຼັກ"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
        
              SizedBox(
                height: 16,
              ),
              CarouselImages(listImages: listImages, height: 300),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: TextField(
                  onChanged: (value) {
                 
                  },
                  decoration: InputDecoration(
                    hintText: 'ຄົ້ນຫາ',
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              Container(
                width: 500,
                height: 500,
                child: GridView.count(
                  scrollDirection: Axis.vertical,
                  childAspectRatio: 1.2,
                  crossAxisCount: 2,
                  children: List.generate(
                    100,
                    (index) => Container(
                      width: 200,
                      height: 200,
                      child: Card(
                          margin: EdgeInsets.all(16),
                          elevation: 2,
                          child: Image.network(
                                  'https://picsum.photos/250?image=$index',
                                  fit: BoxFit.cover)),
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
