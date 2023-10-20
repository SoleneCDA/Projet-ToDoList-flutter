import 'package:flutter/material.dart';

import 'package:appli_test/pages/event_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 0,
        title:const Text("ToDoList de Solene"),
      ),
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text (
              "Bienvenue sur ma",
              style: TextStyle(
                fontSize: 42,
                fontFamily: "Breathe",
              ),
              textAlign: TextAlign.center,
            ),
            Image.asset("assets/images/istockphoto-1266632962-612x612.jpg"),
            const Text("ToDoList",
              style: TextStyle(
                fontSize: 42,
                fontFamily: "Breathe",
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
              style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(EdgeInsets.all(20)),
                  backgroundColor: MaterialStatePropertyAll(Colors.pink)
              ),
              onPressed: () {
                Navigator.push(
                  context,
                 PageRouteBuilder(pageBuilder: (_, __, ___) => const EventPage()),
                );
              },
              child: const Text("Valider",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
