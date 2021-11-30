class Upcomming {
  String imageUrl;
  String header_upcom;
  String kota;

  Upcomming({
    required this.imageUrl,
    required this.header_upcom,
    required this.kota,
  });

  get length => null;
}

List<Upcomming> upcommings = [
  Upcomming(
    imageUrl: 'assets/images/hotel_two.png',
    header_upcom: 'Smotel\nPancoran',
    kota: 'Jakarta Selatan',
  ),
  Upcomming(
    imageUrl: 'assets/images/hotel_one.png',
    header_upcom: 'Smotel\nSurakarta',
    kota: 'Surakarta',
  ),
  Upcomming(
    imageUrl: 'assets/images/hotel_two.png',
    header_upcom: 'Smotel\nPancoran',
    kota: 'Jakarta Selatan',
  ),
  Upcomming(
    imageUrl: 'assets/images/hotel_one.png',
    header_upcom: 'Smotel\nSurakarta',
    kota: 'Surakarta',
  ),
];
