import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:sustainable_system/controllers/database_controller.dart';
import 'package:sustainable_system/screens/home_page.dart';
import 'package:get/get.dart';
import 'package:sustainable_system/utils/constants.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    databaseController.init(); //Iniciando la base de datos
    return FeatureDiscovery(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: primarySwatch[300],
          primarySwatch: primarySwatch,
        ),
        home: const HomePage(),
      ),
    );
  }
}
