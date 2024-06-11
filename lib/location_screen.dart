import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String? selectedFuel;
  int? selectedQuantity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        foregroundColor: Colors.grey,
        backgroundColor: const Color(0xFF270949), // Theme color for AppBar
        title: const Text(
          'Location',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold),
          ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'LOCATION',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF270949), // Theme color for heading
              ),
            ),
            const SizedBox(height: 8.0),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Location',
                labelStyle: TextStyle(color: Color(0xFF270949)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF270949)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF270949)),
                ),
              ),
              style: TextStyle(color: Color(0xFF270949)),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Select Fuel Type',
              style: TextStyle(fontSize: 16, color: Color(0xFF270949)),
            ),
            ListTile(
              title: const Text('Petrol', style: TextStyle(color: Color(0xFF270949))),
              leading: Radio(
                value: 'petrol',
                groupValue: selectedFuel,
                onChanged: (value) {
                  setState(() {
                    selectedFuel = value as String?;
                  });
                },
                activeColor:const Color(0xFF270949),
                fillColor: MaterialStateProperty.all<Color>(Color(0xFF270949)),
              ),
            ),
            ListTile(
              title: const Text('Diesel', style: TextStyle(color: Color(0xFF270949))),
              leading: Radio(
                value: 'diesel',
                groupValue: selectedFuel,
                onChanged: (value) {
                  setState(() {
                    selectedFuel = value as String?;
                  });
                },
                activeColor: Color(0xFF270949),
                fillColor: MaterialStateProperty.all<Color>(Color(0xFF270949)),
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Select Quantity',
              style: TextStyle(fontSize: 16, color: Color(0xFF270949)),
            ),
            Wrap(
              spacing: 10.0,
              children: List.generate(9, (index) {
                int quantity = 2 * (index + 1);
                return ChoiceChip(
                  label: Text('${quantity}L'),
                  selected: selectedQuantity == quantity,
                  onSelected: (selected) {
                    setState(() {
                      selectedQuantity = selected ? quantity : null;
                    });
                  },
                  backgroundColor: Colors.grey.shade400,
                  selectedColor: Color(0xFF270949),
                  labelStyle: TextStyle(
                    color: selectedQuantity == quantity ? Colors.grey.shade400 : Color(0xFF270949),
                  ),
                  shape: const StadiumBorder(side: BorderSide(color: Color(0xFF270949))),
                );
              }),
            ),
            const SizedBox(height: 16.0),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF270949),
                  foregroundColor: Colors.white,
                  elevation: 5,
                  padding:const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text('Next', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white, // Set background color
      body: LocationScreen(),
    ),
  ));
}
