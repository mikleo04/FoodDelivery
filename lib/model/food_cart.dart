class FoodCart {
  String image;
  String name;
  String price;

  FoodCart({
    required this.image,
    required this.name,
    required this.price
  });
}

var foodCartList = [

  FoodCart(
      image: 'images/pendap.png',
      name: 'Pendap ',
      price: 'Rp. 100.000'
  ),
  FoodCart(
      image: 'images/rendang.png',
      name: 'Rendang ',
      price: 'Rp. 75.000'
  ),
  FoodCart(
      image: 'images/pempek.png',
      name: 'Pempek ',
      price: 'Rp. 50.000'
  ),
  FoodCart(
      image: 'images/bika_ambon.png',
      name: 'Bika Ambon',
      price: 'Rp. 80.000'
  )

];