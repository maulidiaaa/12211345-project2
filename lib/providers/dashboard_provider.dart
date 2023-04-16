import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pendataanwarga/views/dashboard_view.dart';
import 'package:pendataanwarga/models/berita_model.dart';
import 'package:http/http.dart' as http;

class DashboardProvider with ChangeNotifier {
  int indexTombol = 0;

  void saatdiklik(int index) {
    indexTombol = index;
    notifyListeners();
  }
}
class BeritaPanelProvider with ChangeNotifier {
  bool BeritaModel=false;

  void saatdiklik() {
    
    notifyListeners();
  }
}

class BeritaLoadDataProvider with ChangeNotifier {
  List<ListBerita> data=[];

  Future refresh()async{
    final alamat = 'http://api.mediastack.com/v1/news?access_key=93e783681f4f058cdaed98fcb5f7d82f';
    final Hasil = await http.get(Uri.parse(alamat));
    if(Hasil.statusCode!=200) return[];

    final Obj = jsonDecode(Hasil.body);
    
    for(var n in Obj['data']){}

  }
}