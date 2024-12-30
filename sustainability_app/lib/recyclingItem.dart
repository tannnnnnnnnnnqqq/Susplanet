import 'package:flutter/material.dart';

class RecyclingItemsPage extends StatelessWidget {
  const RecyclingItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recycling Items'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Recycling Items',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildRecyclingItem('Newspaper', '20/4/2024', 'Pending'),
                  _buildRecyclingItem(
                      'Used Cooking Oil', '20/5/2023', 'Approved'),
                  _buildRecyclingItem('Used Furniture', '2/1/2023', 'Rejected'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecyclingItem(String item, String date, String status) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(item),
        subtitle: Text(date),
        trailing: Text(status),
      ),
    );
  }
}
