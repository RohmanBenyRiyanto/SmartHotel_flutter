# Navbar
Navbar pada aplikasi Smotel ini digunakan untuk mempermudah user dalam melakukan navigasi antar menu yaitu home, history, myscan, myroom dan profile. Navbar ini dibuat dengan widget bawaan flutter BottomNavigationBar dan di control dengan value yang diambil dari Obx

Berikut adalah fungsi yang kami gunakan untuk mengambil value ketika dilakukan tap pada menu navbar
```dart
body: Obx(
  () => controller.myWidgets.elementAt(controller.indexWidget.value),
),
```

Berikut adalah fungsi yang kami gunakan untuk mengontrol perpindahan halaman pada navbar
```dart
RxInt indexWidget = 0.obs;

  void changeIndexBottomNav(int index) {
    indexWidget.value = index;
  }

  List<Widget> myWidgets = [
    HomeView(),
    Center(
      child: Text(
        'History',
      ),
    ),
    MyRoomView(),
    ProfileView(),
  ];
```

Berikut adalah tampilannya:

![image](https://user-images.githubusercontent.com/57904667/144219656-08c198b5-2404-4e4c-a277-9a422e29b958.png)
