
# MyScan
MyScan pada app Smotel sendiri diimplementasikan dengan GetX state management yang dimana sebuah view yang berfungsi sebagai tampilan Splash Screen sudah ter-binding dengan sebuah controller, controller tersebut berfungsi sebagai control bagaimana splash view ini akan ditampilkan. MyScan sendiri digunakan untuk mengeluarkan QR code yang digunakan untuk check-in pada hotel

Berikut adalah fungsi yang kami gunakan untuk mengarahkan QR ke sebuah dialog
```dart
floatingActionButtonLocation: const FixedCenterDockedFabLocation(),
floatingActionButton: FloatingActionButton(
    backgroundColor: color_main,
    onPressed: () {
        Get.dialog(QrDialog());
    },
    tooltip: 'Scan',
    child: Icon(MyFlutterApp.ic_qrcode, size: 32),
    elevation: 0,
),
```

Berikut adalah tampilannya:

![image](https://user-images.githubusercontent.com/57904667/144222006-94dd7493-ee99-46d2-8e53-160ba0a0ce2f.png)
