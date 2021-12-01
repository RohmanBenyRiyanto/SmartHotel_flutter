# Profile
Profile pada aplikasi Smotel ini digunakan untuk mempermudah user dalam melakukan pengubahan data akun baik itu gambar profile, identitas, no telp, email dan alamat. Selain itu ada beberapa button yang digunakan untuk kembali dan logout

Berikut adalah fungsi yang kami gunakan untuk Logout
```dart
void signOut() async {
  await FirebaseAuth.instance.signOut();
  Get.offAllNamed(Routes.SIGNIN);
  Get.snackbar(
    "Succesfully Signed out",
    "Signed out succesfully",
    snackPosition: SnackPosition.BOTTOM,
    colorText: color_white,
    backgroundColor: color_black,
    margin: EdgeInsets.all(15),
  );
}
```

Berikut adalah tampilannya:

