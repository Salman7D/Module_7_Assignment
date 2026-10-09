import 'package:flutter/material.dart';

main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contact List",
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const ContactListPage(),
    );
  }
}

class ContactListPage extends StatelessWidget {
  const ContactListPage({super.key});

  @override
  Widget build(BuildContext context) {

    const Color appColor = Color(0xFF607D8B);
    const Color nameColor = Color(0xFFF16F68);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: appColor,
        centerTitle: true,
        title: Text(
          "Contact List",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,

          ),
        ),
      ),



    );
  }
}

