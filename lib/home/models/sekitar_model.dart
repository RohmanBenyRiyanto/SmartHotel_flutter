class Sekitar {
  String imageUrl;
  String nama_hotel;
  String kota;
  String rating;
  String harga;

  Sekitar(
      {required this.imageUrl,
      required this.nama_hotel,
      required this.kota,
      required this.rating,
      required this.harga});

  get length => null;
}

List<Sekitar> sekitar = [
  Sekitar(
    imageUrl: 'assets/images/hotel_two.png',
    nama_hotel: 'Smotel Pancoran',
    kota: 'Jakarta Selatan',
    rating: '4.4',
    harga: '250.000',
  ),
  Sekitar(
    imageUrl: 'assets/images/hotel_one.png',
    nama_hotel: 'Smotel Surakarta',
    kota: 'Surakarta',
    rating: '5',
    harga: '350.000',
  ),
  Sekitar(
    imageUrl: 'assets/images/hotel_two.png',
    nama_hotel: 'Smotel Pancoran',
    kota: 'Jakarta Selatan',
    rating: '4.5',
    harga: '200.000',
  ),
  Sekitar(
    imageUrl: 'assets/images/hotel_one.png',
    nama_hotel: 'Smotel Surakarta',
    kota: 'Surakarta',
    rating: '4.6',
    harga: '500.000',
  ),
];
