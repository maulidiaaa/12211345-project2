import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  
  get borderRadius => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 140, bottom: 35), 
            child: Text('Aplikasi\nPendataan Warga',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Stack(
            children: [
                SizedBox(
                  height: 380,
                  child:  Card(
                  margin: const EdgeInsets.only(top: 50, left: 20,right: 20),
                  color: Colors.brown[200],
                  child: Column(
                    children: [
                      const SizedBox(height: 100,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            fillColor: Colors.grey[50],
                            filled: true
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            fillColor: Colors.grey[50],
                            filled: true
                          ),
                        ),
                      ),
                      ElevatedButton (onPressed: (){}, 
                        // ignore: sort_child_properties_last
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          child: Text('Login'),
                          ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius : BorderRadius.circular(30)), backgroundColor: Colors.red
                        ) ,
                      ),
                    ],
                  ),
                ),
                ),
                Center(child: Image.asset('assets/logo.png', width: 150)),
            ],
          ),
          
        ],
      ),
    );
  }
}