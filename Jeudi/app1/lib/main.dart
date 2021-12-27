import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PageAccueil(),
    );
  }
}

class PageAccueil extends StatefulWidget {
  const PageAccueil({Key? key}) : super(key: key);

  @override
  _PageAccueilState createState() => _PageAccueilState();
}

class _PageAccueilState extends State<PageAccueil> {
  TextEditingController nomController = TextEditingController();
  TextEditingController prenomController = TextEditingController();
  List<DropdownMenuItem<String>> mesItems = [
    DropdownMenuItem(
        child: Text("option 1"),
        value: "option 1"
    ),
    DropdownMenuItem(
        child: Text("option 2"),
        value: "option 2"
    ),
    DropdownMenuItem(
        child: Text("option 3"),
        value: "option 3"
    ),
  ];

  String tmp = "option 1";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("images/image.jpg",
                width: 100.0,
                height: 100.0,
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: nomController,
                decoration: const InputDecoration(
                  //labelText: "Nom",
                    label: Text("Nom",
                      style: TextStyle(
                          fontSize: 20.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                    hintText: "Nom"
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                controller: prenomController,
                decoration: const InputDecoration(
                  //labelText: "Nom",
                    label: Text("Prénom",
                      style: TextStyle(
                          fontSize: 20.0,
                          // fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                    hintText: "Prénom"
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              DropdownButton(
                  items: mesItems,
                  value: tmp,
                  onChanged: (String? maValeur){
                    setState(() {
                      tmp = maValeur!;
                    });
                  }
                ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: (){},
                      child: const Text("Fermer")
                  ),
                  ElevatedButton(
                      onPressed: (){
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: Text("Resultat"),
                                content: Text(nomController.text + " " + prenomController.text),
                              );
                            }
                        );
                      },
                      child: const Text("Ok")
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
