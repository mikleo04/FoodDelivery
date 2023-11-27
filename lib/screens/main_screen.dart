import 'package:flutter/material.dart';
import 'package:food_delivery/model/food_place.dart';
import 'package:food_delivery/screens/detail_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder (
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth <= 600) {
          return FoodPlaceList();
        } else if (constraints.maxWidth <= 1200) {
          return FoodPlaceWeb(gridCount: 3);
        } else {
          return FoodPlaceWeb(gridCount: 6);
        }
      }
    );
  }
}

class FoodPlaceList extends StatelessWidget {
  const FoodPlaceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Most Popular",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bold',
              ),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final FoodPlace placePopular = foodPlaceList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreen(place: placePopular);
                    }));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Hero(
                      tag: "image_${placePopular.name}",
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(placePopular.image),
                      ),
                    ),
                  ),
                );
              },
              itemCount: foodPlaceList.length
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "List Makanan",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Bold'
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final FoodPlace place = foodPlaceList[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return DetailScreen(place: place);
                    }));
                  },
                  child: Card(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Hero(
                            tag: "image_${place.name}",
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                              ),
                              child: Image.asset(place.image),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  place.name,
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                SizedBox(height: 10.0),
                                Text(place.region),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: foodPlaceList.length,
            ),
          ),
        ],
      ),
    );
  }
}

class FoodPlaceWeb extends StatelessWidget {
  final int gridCount;

  const FoodPlaceWeb({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 64,
        vertical: 16,
      ),
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    "Most Popular",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Bold'
                    ),
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final FoodPlace placePopular = foodPlaceList[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailScreen(place: placePopular);
                                },
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: Hero(
                              tag: "popular_${placePopular.name}",
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.asset(
                                  placePopular.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: foodPlaceList.length,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(
                    "List Makanan",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Bold'
                    ),
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: gridCount,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      children: foodPlaceList.map((place) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return DetailScreen(place: place);
                            }));
                          },
                          child: Card(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                    child: Image.asset(
                                      place.image,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 8,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    place.name,
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                                  child: Text(
                                    place.region,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }).toList()
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

