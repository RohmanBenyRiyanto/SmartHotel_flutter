# Home Screen
Home Screen pada app Smotel sendiri diimplementasikan dengan GetX state management yang dimana sebuah view yang berfungsi sebagai tampilan Home Screen sudah ter-binding dengan sebuah controller, controller tersebut berfungsi sebagai control bagaimana splash view ini akan ditampilkan. Home view sendiri kami pecah menjadi beberapa widget

Berikut adalah fungsi yang kami gunakan
```dart
Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      backgroundColor: color_white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            SizedBox(
              height: 10,
            ),
            //tampil tidaknya cards upcoming tergantung ada tidaknya jadwal
            Visibility(visible: true, child: ScheduleCarousel()),
            SizedBox(
              height: 5,
            ),
            Visibility(visible: true, child: Promo_carousel()),
            SizedBox(
              height: 5,
            ),
            CardsSekitarAnda(),
            SizedBox(
              height: 25,
            ),
          ],
        ),
        bottom: false,
      ),
    );
  }
```

Berikut adalah tampilannya:

![image](https://user-images.githubusercontent.com/57904667/144219850-30673198-6ce3-4f0a-b876-95de46878533.png)
