import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peduli Lindungi App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Peduli Lindungi',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: ListView(padding: EdgeInsets.all(20), children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 420,
                      height: 110,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft:
                              Radius.circular(23), // Corner radius di kiri atas
                          topRight: Radius.circular(
                              23), // Corner radius di kanan atas
                        ),
                      ),
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Text(
                              'Entering a public space?',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 45,
                            left: 10,
                            child: Text(
                              'Stay alert to stay safe',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: -1,
                      right: -2,
                      child: Container(
                        width: 117,
                        height: 117,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/gambar_tangan.png'),
                            fit: BoxFit.contain,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 420,
                  height: 80, // Tinggi bagian bawah (putih)
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                          Radius.circular(23), // Corner radius di kiri bawah
                      bottomRight:
                          Radius.circular(23), // Corner radius di kanan bawah
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Warna shadow
                        spreadRadius: 5, // Radius penyebaran shadow
                        blurRadius: 7, // Radius blur shadow
                        offset: Offset(0, 3), // Offset shadow
                      ),
                    ],
                  ),
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 10,
                        top: 20,
                        child: Icon(Icons.arrow_drop_down),
                      ),
                      Positioned(
                        left: 40,
                        top: 20,
                        child: Text(
                          'Check-In Preference',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 10,
                        child: Material(
                          color: Color.fromARGB(255, 219, 244, 255),
                          borderRadius: BorderRadius.circular(50),
                          child: InkWell(
                            onTap: () {
                              // Fungsi untuk menangani ketika tombol ditekan
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(9),
                              child: Container(
                                width: 120, // Lebar kontainer
                                height: 20, // Tinggi kontainer
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.qr_code_scanner_sharp,
                                      color: Color.fromARGB(255, 64, 142, 202),
                                    ),
                                    Text(
                                      'Check-In',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 64, 142, 202),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                // Tambah jarak antara konten sebelumnya dengan menu
                SingleChildScrollView(
                  child: GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      menuItem('COVID-19 Vaccine', 'assets/covid_vaccine.png'),
                      menuItem('COVID-19 Test Results',
                          'assets/covid_test_results.png'),
                      menuItem('EHAC', 'assets/ehac.png'),
                      menuItem('Travel Regulations',
                          'assets/travel_regulations.png'),
                      menuItem('Telemedicine', 'assets/telemedicine.png'),
                      menuItem('Healthcare Facility',
                          'assets/healthcare_facility.png'),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }

  Widget menuItem(String title, String imagePath) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 5), // Tambahkan padding
      child: Column(
        children: [
          Image.asset(imagePath, width: 95, height: 95),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
            child: Text(title, textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
