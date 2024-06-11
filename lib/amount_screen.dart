import 'package:flutter/material.dart';

class AmountScreen extends StatefulWidget {
  @override
  _AmountScreenState createState() => _AmountScreenState();
}

class _AmountScreenState extends State<AmountScreen> {
  String? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: const Color(0xFF270949),
        foregroundColor: Colors.grey,
        title: const Text(
          'Payment',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'AMOUNT',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF270949),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            const Text(
              '₹ 1,220',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Color(0xFF270949),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32.0),
            const Text(
              'Select Payment Type',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF270949),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            Center(child: buildPaymentOption('Credit Card', 'credit_card')),
            Center(child: buildPaymentOption('Debit Card', 'debit_card')),
            Center(child: buildPaymentOption('Google Pay', 'gpay')),
            Center(child: buildPaymentOption('Cash on Delivery', 'cash')),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF270949),
                foregroundColor: Colors.white,
                elevation: 5,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text('Next', style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPaymentOption(String title, String value) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Color(0xFF270949))),
      leading: Radio(
        value: value,
        groupValue: selectedPaymentMethod,
        onChanged: (newValue) {
          setState(() {
            selectedPaymentMethod = newValue as String?;
          });
        },
        activeColor: const Color(0xFF270949),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AmountScreen(),
  ));
}
