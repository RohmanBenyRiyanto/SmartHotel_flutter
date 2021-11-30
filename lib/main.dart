import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

import 'package:smart_hotel/app/controllers/auth_controller.dart';
import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/widgets/loading.dart';

import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final authController = Get.put(AuthController(), permanent: true);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color_status,
      ),
    );
    return StreamBuilder<User?>(
      stream: authController.streamAuthStatus,
      builder: (context, snapsot) {
        print(snapsot.data);
        if (snapsot.connectionState == ConnectionState.active) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Smart Hotel',
            // initialRoute: Routes.SIGNUP,
            initialRoute:
                snapsot.data != null ? Routes.NAVBAR : Routes.SPLASHSCREEN,
            // initialRoute:
            //     snapsot.data != null && snapsot.data!.emailVerified == true
            //         ? Routes.HOME
            //         : Routes.SPLASHSCREEN,
            getPages: AppPages.routes,
          );
        }
        return LoadingView();
      },
    );
  }
}
