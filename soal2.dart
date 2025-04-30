import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GunsNRosesCard(),
    );
  }
}

class GunsNRosesCard extends StatelessWidget {
  const GunsNRosesCard({super.key});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('dd MMMM yyyy').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Guns N' Roses"),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      'http://images4.fanpop.com/image/photos/15300000/Guns-N-Roses-guns-n-roses-15303953-1250-855.jpg',
                      fit: BoxFit.contain,
                      width: double.infinity,
                      height: 300,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    formattedDate,
                    style: const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Guns N\' Roses',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Guns N\' Roses adalah band hard rock asal Los Angeles, California, yang dibentuk pada tahun 1985. '
                    'Grup ini terkenal dengan gaya musik yang menggabungkan elemen hard rock, punk, dan heavy metal, serta dikenal dengan penampilan panggung yang eksplosif. '
                    'Formasi klasik band ini terdiri dari Axl Rose (vokal), Slash (gitar utama), Duff McKagan (bass), Izzy Stradlin (gitar ritme), dan Steven Adler (drum).\n\n'
                    'Album debut mereka, "Appetite for Destruction" (1987), menjadi salah satu album debut terlaris sepanjang masa dengan hits legendaris seperti "Sweet Child O\' Mine", "Welcome to the Jungle", dan "Paradise City". '
                    'Pada awal 1990-an, mereka merilis dua album sekaligus: "Use Your Illusion I" dan "Use Your Illusion II", yang menampilkan lagu-lagu seperti "November Rain", "Don\'t Cry", dan "Civil War".\n\n'
                    'Meskipun mengalami berbagai pergantian personel dan hiatus panjang, Guns N\' Roses tetap menjadi salah satu band paling berpengaruh dalam sejarah musik rock. '
                    'Pada tahun 2016, mereka melakukan reuni besar dan sejak itu kembali aktif melakukan tur dunia yang sukses besar.',
                    style: TextStyle(fontSize: 14, color: Colors.black87),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
