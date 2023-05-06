import 'package:flutter/material.dart';
import 'package:donation_app/Detail.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Donations App', style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.yellow,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(4),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/carryminati.jpeg',
                  width: 100,
                  height: 100,
                ),
                title: Text('Carry Minati'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              itemName: 'Carry Minati',
                            )),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(4),
              child: ListTile(
                leading: Image.asset('assets/images/bhuvan-bam-1.jpeg',
                    width: 100, height: 100),
                title: Text('Bhuvan Bam'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailPage(itemName: 'Bhuvan Bam')),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(4),
              child: ListTile(
                leading: Image.asset('assets/images/MrwhosetheBoss.jpeg',
                    width: 100, height: 100),
                title: Text('MrWhoseTheBoss'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              itemName: 'Arun Maini',
                            )),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(4),
              child: ListTile(
                leading: Image.asset(
                  'assets/images/BBkiVines.webp',
                  width: 100,
                  height: 100,
                ),
                title: Text('BBKiVines'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(
                              itemName: 'BBkiVines',
                            )),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
