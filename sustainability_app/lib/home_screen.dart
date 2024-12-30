import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sustainability App Home'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Points Balance
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Welcome to EcoRide & Recycle Connect!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Points: 0.00',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Challenge Section
            const Text(
              'Challenge',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('30-Days Zero Waste'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Day 22'),
                        Text('69%'),
                      ],
                    ),
                    LinearProgressIndicator(value: 0.69),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Eco Tips Section
            const Text(
              'Eco Tips',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Wash Clothes in Cold Water'),
                    Text(
                      'Washing clothes with cold water reduces energy consumption.',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // News Section
            const Text(
              'News',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 4,
              child: ListTile(
                title:
                    const Text('Stuttering progress on 30×30 ocean protection'),
                subtitle: const Text('Oct 25, 2024'),
                trailing: TextButton(
                  onPressed: () {},
                  child: const Text('See More'),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Eco Calendar Section
            const Text(
              'Eco Calendar',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Card(
              elevation: 4,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Fri 25/10 Community Clean-up drives'),
                    Text('Thu 31/10 World Cities Day'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
