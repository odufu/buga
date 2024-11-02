import 'package:buga/features/home/presentation/widgets/quick_access_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey[300],
              child: const Icon(Icons.person, color: Colors.purple),
            ),
            const SizedBox(width: 8),
            // User Info
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bezalel & Sons',
                  style: TextStyle(color: Colors.blueGrey[900], fontSize: 15),
                ),
                Text(
                  'Admin',
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 4),
            // Dropdown Icon
            Icon(
              Icons.arrow_drop_down,
              color: Colors.blueGrey[900],
            ),
            const Spacer(),
            // Action Icons
            IconButton(
              icon: const Icon(Icons.headset_mic),
              color: Colors.blueGrey[700],
              onPressed: () {
                // Handle headset icon press
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              color: Colors.cyanAccent,
              onPressed: () {
                // Handle settings icon press
              },
            ),
            IconButton(
              icon: Icon(Icons.card_giftcard),
              color: Colors.amberAccent,
              onPressed: () {
                // Handle gift icon press
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: QuickAccessScreen(),
      ),
    );
  }
}
