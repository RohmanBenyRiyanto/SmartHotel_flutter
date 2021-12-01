# Splash Screen
Splash Screen pada app Smotel sendiri diimplementasikan dengan GetX state management yang dimana sebuah view yang berfungsi sebagai tampilan Splash Screen sudah ter-binding dengan sebuah controller, controller tersebut berfungsi sebagai control bagaimana splash view ini akan ditampilkan.

Berikut adalah fungsi yang kami gunakan untuk mengarahkan Splash screen ke Login page dengan delay 4 detik
```dart
Future<void> splash() async {
  Timer(Duration(seconds: 4), () {
    Get.offAllNamed(Routes.SIGNIN);
  });
}
```

Dan fungsi tersebut dijalankan ketika aplikasi telah dijalankan
```dart
@override
void onReady() {
  super.onReady();
  splash();
}
```

Berikut adalah tampilannya:

![image](https://user-images.githubusercontent.com/57904667/144192849-ce73c085-73e6-49b5-9285-6dd13c6d93f0.png)
