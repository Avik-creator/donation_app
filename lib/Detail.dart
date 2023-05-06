import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String itemName;

  DetailPage({required this.itemName});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String? _selectedCurrency;
  final List<String> _currencies = [
    "USD",
    'Rs',
    'GBP',
    'INR',
  ];

  TextEditingController amountController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  bool _isAmountValid = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text(
          widget.itemName,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                labelText: 'Select Currency',
                border: OutlineInputBorder(),
              ),
              value: _selectedCurrency,
              items: _currencies.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedCurrency = newValue;
                });
              },
            ),
            SizedBox(height: 16),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              decoration: InputDecoration(
                labelText: 'Enter Amount',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                  labelText: 'Enter Name (optional)',
                  border: OutlineInputBorder()),
            ),
            SizedBox(height: 16),
            TextField(
              controller: _messageController,
              maxLines: null,
              decoration: InputDecoration(
                  labelText: 'Enter Message (optional)',
                  border: OutlineInputBorder()),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Support',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: 50,
                            child: TextField(
                              controller: amountController,
                              keyboardType: TextInputType.numberWithOptions(
                                  decimal: true),
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlignVertical: TextAlignVertical.center,
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                setState(() {
                                  _isAmountValid =
                                      double.tryParse(value) != null;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
