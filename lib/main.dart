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
        elevation: 2,
        centerTitle: true,
        title: Text(
          "Contact List",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,

          ),
        ),
      ),

      body: SafeArea(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.all(9),
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: "Hasan",
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 15
                          ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4)
                            )
                        ),
                      ),

                      const SizedBox(height: 20),

                      TextFormField(
                        initialValue: "01745-777777",
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 15
                          ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(4)
                              )
                        ),
                      )
                    ],
                  ),

              )

            ],
          ))

    );
  }
}

