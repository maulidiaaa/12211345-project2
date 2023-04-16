import 'package:flutter/material.dart';
import 'package:pendataanwarga/providers/Berita_panel_provider.dart';
import 'package:pendataanwarga/providers/dashboard_provider.dart';
import 'package:pendataanwarga/views/login_view.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    builder: (context, Widget) {
      return const MaterialApp(
        home: LoginView(),
      );
    },
    providers: [
      ChangeNotifierProvider(create: (c) => DashboardProvider()),
      ChangeNotifierProvider(create: (c) => BeritaPanelProvider()),
      ChangeNotifierProvider(create: (c) => BeritaLoadDataProvider())
    ],
  ));
}
