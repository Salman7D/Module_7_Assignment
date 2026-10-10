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

    final List<Map<String, String>> contacts = [
      {'name': 'Jawad', 'phone': '01877-777777'},
      {'name': 'Ferdous', 'phone': '01673-777777'},
      {'name': 'Hasan', 'phone': '01745-777777'},
      {'name': 'Hasan', 'phone': '01745-777777'},
      {'name': 'Hasan', 'phone': '01745-777777'},
    ];

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
                      ),

                      const SizedBox(height: 10),

                      SizedBox(
                        width: double.infinity,
                        height: 36,

                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: appColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                            )
                          ), child: const Text(
                          "Add",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white

                          ),
                        )
                        
                        )
                      )

                    ],
                  ),

              ),

              const SizedBox(height: 20),

              Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 9),
                    itemCount: contacts.length,
                    itemBuilder: (context, index) {
                      final contact = contacts[index];

                      return Card(
                        color: const Color(0xFFF2F2F2),
                        elevation: 0,
                        margin: const EdgeInsets.only(bottom: 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero
                        ),

                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 5
                          ),

                          leading: const Icon(
                            Icons.person,
                            color: Color(0xFF795548),
                            size: 30,
                          ),
                        ),
                      );
                    },
                  )
              )

            ],
          ))

    );
  }


}

