class DetailSuccesContent {
  String name;
  String location;
  String SvgAssets;
  String imageAsset;
  String IdPemesanan;
  String CheckInTgl;
  String CheckOuttTgl;
  String CheckInDate;
  String CheckOuDate;
  String Orang;
  String Bed;
  String TipeKamar;
  String NoKamar;
  String QrCode;

  DetailSuccesContent({
    required this.name,
    required this.location,
    required this.SvgAssets,
    required this.imageAsset,
    required this.IdPemesanan,
    required this.CheckInTgl,
    required this.CheckOuttTgl,
    required this.CheckInDate,
    required this.CheckOuDate,
    required this.Orang,
    required this.Bed,
    required this.TipeKamar,
    required this.NoKamar,
    required this.QrCode,
  });
  get length => null;
}

var detail_succes_content = [
  DetailSuccesContent(
    name: 'Smotel\nPancoran',
    location: 'Kota Jakarta Selatan',
    SvgAssets: 'assets/svg/location.svg',
    imageAsset: 'assets/images/hotel_two.png',
    IdPemesanan: 'XCSXJXNJSCCH123432',
    CheckInTgl: '31',
    CheckOuttTgl: '1',
    CheckInDate: 'Okt, 2021',
    CheckOuDate: 'Nov, 2021',
    Orang: '3',
    Bed: '2',
    TipeKamar: 'Deluxe Room',
    NoKamar: '230',
    QrCode: 'assets/images/qr_code.png',
  ),
];
