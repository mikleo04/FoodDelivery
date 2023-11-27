import 'package:flutter/material.dart';
import 'package:food_delivery/model/food_cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder (
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return CartList();
          } else if (constraints.maxWidth <= 1200) {
            return CartListWeb(gridCount: 3,);
          } else {
            return CartListWeb(gridCount: 6,);
          }
        }
    );
  }
}

class CartList extends StatefulWidget {
  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  List<bool> isCheckedList = List.filled(foodCartList.length, false);

  int getCheckedCount() {
    return isCheckedList.where((isChecked) => isChecked).length;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                final FoodCart place = foodCartList[index];
                return Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            place.image,
                            height: 80,
                            fit: BoxFit.cover,
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
                                style: TextStyle(fontSize: 16.0, fontFamily: 'SemiBold'),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                place.price,
                                style: TextStyle(fontFamily: 'Regular'),
                              )
                            ],
                          ),
                        ),
                      ),
                      Checkbox(
                        value: isCheckedList[index],
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckedList[index] = value!;
                          });
                        },
                      ),
                    ],
                  ),
                );
              },
              itemCount: foodCartList.length,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Order Confirmation'),
                      content: Text('Terima kasih! Pesanan Anda sedang diproses.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Bayar (${getCheckedCount()}) item'),
            ),
          )
        ],
      ),
    );
  }
}

class CartListWeb extends StatefulWidget {
  final int gridCount;
  const CartListWeb({Key? key, required this.gridCount}) : super(key: key);

  @override
  _CartListWebState createState() => _CartListWebState();
}

class _CartListWebState extends State<CartListWeb> {
  List<bool> isCheckedList = List.filled(foodCartList.length, false);

  int getCheckedCount() {
    return isCheckedList.where((isChecked) => isChecked).length;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          const Text(
            "Makanan Dalam Keranjang",
            style: TextStyle(
              fontSize: 20.0,
              fontFamily: 'Bold'
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: GridView.count(
              crossAxisCount: widget.gridCount,
              crossAxisSpacing: 16.0,
              mainAxisSpacing: 16.0,
              children: List.generate(foodCartList.length, (index) {
                final FoodCart place = foodCartList[index];
                return Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            place.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10) ,
                        child: Row(
                          children: <Widget> [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      place.name,
                                      style: const TextStyle(
                                        fontSize: 16.0,
                                        fontFamily: 'SemiBold'
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                                    child: Text(
                                      place.price,
                                      style: TextStyle (fontFamily: 'Regular'),
                                    ),
                                  ),
                                ]
                              ),
                            ),
                            Checkbox(
                              value: isCheckedList[index],
                              onChanged: (bool? value) {
                                setState(() {
                                  isCheckedList[index] = value!;
                                });
                              },
                            ),
                          ]
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Order Confirmation'),
                      content: Text('Terima kasih! Pesanan Anda sedang diproses.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Bayar (${getCheckedCount()}) item'),
            ),
          )
        ],
      ),
    );
  }
}
