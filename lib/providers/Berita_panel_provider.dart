import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class BeritaPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<BeritaPanelProvider>().muatdata();
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita'),
      ),
      body: Consumer<BeritaPanelProvider>(builder: (context, prov, w) {
        return ListView(
          children: [
            for (final data in prov.data)
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${data['title']}'),
                  Image.network(data['image'] ?? '',
                      errorBuilder: (context, Error, StackTrace) {
                    return Image.asset('assets/logo.png');
                  }),
                  Text('${data['description']}')
                ],
              )
          ],
        );
      }),
    );
  }
}

class BeritaPanelProvider with ChangeNotifier {
  List data = [];

  Future<List> muatdata() async {
    final url = "";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) {
      data = [];
    } else {
      final js = jsonDecode(response.body);
      data = js['data'];
    }
    notifyListeners();
    return data;
  }
}
