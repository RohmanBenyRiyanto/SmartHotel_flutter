class ProfileData {
  String fullname;
  String nickname;
  String Id;
  String NoTlp;
  String Email;
  String Almt;

  ProfileData({
    required this.fullname,
    required this.nickname,
    required this.Id,
    required this.NoTlp,
    required this.Email,
    required this.Almt,
  });
  get length => null;
}

var profiledata = [
  ProfileData(
    fullname: 'Bambang Sayonara',
    nickname: 'Bambang',
    Id: '9081902831029',
    NoTlp: '089121311234',
    Email: 'qwerty@gmail.com',
    Almt: 'Jl D.I. Panjaitan 1234 B Purwokerto Selatan',
  ),
];
