import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int donasi = 1000;

  void donate() {
    setState(() {
      donasi = donasi + 1000;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi UTS"),
        ),
        body: Center(
            child: Container(
          color: Color.fromARGB(255, 57, 129, 112),
          width: 600,
          height: 440,
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Aplikasi Donatur Kepada: ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                        fontSize: 20),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 43, 182, 149),
                  height: 350,
                  width: 550,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Nama:",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            Text(
                              "NIM:",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            Text(
                              "Kelas:",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Farrel Fachrezaqy",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            Text(
                              "20200120067",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                            Text(
                              "TI IS 1-4",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    ElevatedButton(
                      child: (Text("Donasi Rp. 1000")),
                      onPressed: donate,
                    ),
                    Text(
                      "Rp. " + donasi.toString(),
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
