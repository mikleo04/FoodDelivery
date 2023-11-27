class FoodPlace {
  String image;
  String name;
  String region;
  String description;
  String price;

  FoodPlace({
    required this.image,
    required this.name,
    required this.region,
    required this.description,
    required this.price
  });
}

var foodPlaceList = [
  FoodPlace(
    image: 'images/mie_aceh.png',
    name: 'Mi Aceh',
    region: 'Aceh',
    description: 'Mi Aceh adalah masakan mi pedas khas Aceh di Indonesia. Mi ini disajikan dengan menggunakan mi kuning tebal dengan irisan daging sapi, daging kambing atau seafood, seperti udang dan cumi.',
    price: ''
  ),
  FoodPlace(
    image: 'images/bika_ambon.png',
    name: 'Bika Ambon',
    region: 'Medan',
    description: 'Bika ambon adalah penganan khas Medan, Sumatera Utara, Indonesia. Camilan ini terbuat dari bahan-bahan seperti tepung tapioka, telur, gula, dan santan.',
    price: ''
  ),
  FoodPlace(
      image: 'images/rendang.png',
      name: 'Rendang ',
      region: 'Padang',
      description: 'Rendang atau randang dalam bahasa Minangkabau adalah masakan Minangkabau yang berbahan dasar daging dan berasal dari Sumatera Barat, Indonesia. Makanan tradisional ini dihasilkan dari proses memasak suhu rendah dalam waktu lama dengan menggunakan aneka rempah-rempah dan santan.',
      price: ''
  ),
  FoodPlace(
      image: 'images/pendap.png',
      name: 'Pendap ',
      region: 'Bengkulu',
      description: 'Pendap, atau biasa juga disebut ikan pais, merupakan salah satu makanan Indonesia dari Provinsi Bengkulu.',
      price: 'Pendap memiliki cita rasa pedas dan gurih, serta aroma khas daun talas yang menjadi pembungkusnya.'
  ),
  FoodPlace(
      image: 'images/gulai_belacan.png',
      name: 'Gulai Belacan',
      region: 'Riau',
      description: 'Gulai belacan merupakan makanan tradisional Riau. Ini berbahan dasar udang yang dipadukan dengan berbagai macam rempah-rempah pilihan dan dikombinasikan dengan belacan atau terasi.',
      price: ''
  ),
  FoodPlace(
      image: 'images/pempek.png',
      name: 'Pempek ',
      region: 'Palembang',
      description: 'Pempek atau empek-empek adalah makanan yang terbuat dari daging ikan digiling lembut dan dicampur tepung kanji atau tepung sagu.',
      price: ''
  ),
  FoodPlace(
      image: 'images/mie_bangka.png',
      name: 'Mi Bangka',
      region: 'Bangka Belitung',
      description: 'Mi Bangka, atau dikenal sebagai bakmi Bangka adalah salah satu hidangan tradisional masyarakat pulau Bangka.',
      price: ''
  ),
  FoodPlace(
      image: 'images/seruit.png',
      name: 'Seruit ',
      region: 'Lampung',
      description: 'Seruit adalah makanan tradisional Lampung, yaitu olahan ikan yang digoreng atau dibakar.',
      price: ''
  ),
  FoodPlace(
      image: 'images/sate_bandeng.png',
      name: 'Sate Bandeng',
      region: 'Banten',
      description: 'Sate bandeng merupakan makanan khas dari Provinsi Banten, tepatnya dari Serang.',
      price: ''
  ),
  FoodPlace(
      image: 'images/kerak_telor.png',
      name: 'Kerak Telor ',
      region: 'DKI Jakarta',
      description: 'Kerak telor adalah makanan tradisional asli daerah Jakarta (Betawi), yang terbuat dari bahan-bahan beras ketan putih, telur ayam atau bebek.',
      price: ''
  ),
];

