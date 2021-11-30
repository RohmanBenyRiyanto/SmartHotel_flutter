class MyRoomContent {
  String fullname;
  String nickname;
  String IdPemesanan;
  String CheckInTgl;
  String CheckOuttTgl;
  String CheckInDate;
  String CheckOuDate;
  String NoKamar;
  String QrCode;

  MyRoomContent({
    required this.fullname,
    required this.nickname,
    required this.IdPemesanan,
    required this.CheckInTgl,
    required this.CheckOuttTgl,
    required this.CheckInDate,
    required this.CheckOuDate,
    required this.NoKamar,
    required this.QrCode,
  });
  get length => null;
}

var myroomcontent = [
  MyRoomContent(
    fullname: 'Bambang Sayonara',
    nickname: 'Bambang',
    IdPemesanan: 'XCSXJXNJSCCH123432',
    CheckInTgl: '31',
    CheckOuttTgl: '1',
    CheckInDate: 'Okt 2021',
    CheckOuDate: 'Nov 2021',
    NoKamar: '230',
    QrCode: 'assets/svg/qr_code_two.svg',
  ),
];
