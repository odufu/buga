import 'package:flutter/material.dart';

class SalesRevenueCard extends StatelessWidget {
  const SalesRevenueCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // TabBar with explicit height and color adjustments
              SizedBox(
                height: 40, // Ensure enough space for TabBar
                child: TabBar(
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.blue,
                  tabs: [
                    Tab(text: 'Overview'),
                    Tab(text: 'Business'),
                    Tab(text: 'Accounting'),
                  ],
                ),
              ),
              SizedBox(
                height: 230, // Adjust height as needed for TabBarView
                child: TabBarView(
                  children: [
                    // General Overview Tab
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sales Revenue",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16.0),
                        SalesItem(
                          icon: Icons.account_balance,
                          label: "Bank Balance",
                          amount: "₦10,150.99",
                          color: Colors.pink,
                        ),
                        SalesItem(
                          icon: Icons.attach_money,
                          label: "Cash In Hand",
                          amount: "₦10,150.99",
                          color: Colors.green,
                        ),
                        SalesItem(
                          icon: Icons.credit_score,
                          label: "Sales on Credit",
                          amount: "₦10,150.99",
                          color: Colors.orange,
                        ),
                      ],
                    ),
                    // Business Tab
                    Center(
                      child: Text("Business Overview",
                          style: TextStyle(fontSize: 16)),
                    ),
                    // Accounting Tab
                    Center(
                      child: Text("Accounting Overview",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SalesItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String amount;
  final Color color;

  const SalesItem({
    super.key,
    required this.icon,
    required this.label,
    required this.amount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.1),
            child: Icon(icon, color: color),
          ),
          const SizedBox(width: 16.0),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(fontSize: 16.0, color: Colors.black),
            ),
          ),
          Text(
            amount,
            style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
