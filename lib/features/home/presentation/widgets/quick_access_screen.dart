import 'package:flutter/material.dart';

class QuickAccessScreen extends StatelessWidget {
  final List<Map<String, dynamic>> quickAccessItems = [
    {
      'label': 'Inventory',
      'icon': Icons.warehouse,
      'color': Colors.amberAccent
    },
    {'label': 'Invoice', 'icon': Icons.receipt, 'color': Colors.cyanAccent},
    {
      'label': 'Transactions',
      'icon': Icons.swap_horiz,
      'color': Colors.redAccent[100]
    },
    {'label': 'Budget', 'icon': Icons.pie_chart, 'color': Colors.greenAccent},
    {
      'label': 'Virtual Office',
      'icon': Icons.people,
      'color': Colors.pinkAccent
    },
    {
      'label': 'CRM',
      'icon': Icons.people_outline,
      'color': Colors.lightGreenAccent
    },
    {
      'label': 'Suppliers',
      'icon': Icons.local_shipping,
      'color': Colors.grey[300]
    },
    {
      'label': 'Financial Reports',
      'icon': Icons.assessment,
      'color': Colors.yellowAccent
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.blueGrey[700]!, width: 1.5),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Quick Access Title
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Row(
                    children: [
                      Text(
                        'Quick Access',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey[900],
                        ),
                      ),
                    ],
                  ),
                ),
                // Grid Layout for Icons and Labels
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemCount: quickAccessItems.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            color: quickAccessItems[index]['color'],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            quickAccessItems[index]['icon'],
                            color: Colors.blueGrey[900],
                            size: 30,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          maxLines: 1,
                          quickAccessItems[index]['label'],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.blueGrey[900],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
