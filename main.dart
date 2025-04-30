import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewApp(),
    );
  }
}

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.Builder'),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          final item = data[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                getInitials(item['name']!),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(item['name']!),
            subtitle: Text(item['major']!),
          );
        },
      ),
    );
  }
}

String getInitials(String name) {
  List<String> parts = name.split(' ');
  if (parts.length >= 2) {
    return parts[0][0] + parts[1][0];
  } else if (parts.isNotEmpty) {
    return parts[0][0];
  }
  return "";
}

final List<Map<String, String>> data = [
  {'name': 'Syaril Eka Kurniawan', 'major': 'Teknik Informatika'},
  {'name': 'Lina Marlina', 'major': 'Akuntansi'},
  {'name': 'Andi Pratama', 'major': 'Manajemen'},
  {'name': 'Siska Nuraini', 'major': 'Farmasi'},
  {'name': 'Budi Hartono', 'major': 'Sistem Informasi'},
  {'name': 'Citra Dewi', 'major': 'Teknik Sipil'},
  {'name': 'Fajar Rizki', 'major': 'Ilmu Komunikasi'},
  {'name': 'Hana Putri', 'major': 'Desain Komunikasi Visual'},
  {'name': 'Eko Wahyu', 'major': 'Hukum'},
  {'name': 'Rani Oktavia', 'major': 'Pendidikan Bahasa Inggris'},
  {'name': 'Joko Santoso', 'major': 'Teknik Elektro'},
  {'name': 'Nina Amalia', 'major': 'Kedokteran'},
  {'name': 'Rizky Hidayat', 'major': 'Teknik Mesin'},
  {'name': 'Maya Sari', 'major': 'Matematika'},
  {'name': 'Tono Ardiansyah', 'major': 'Statistika'},
];