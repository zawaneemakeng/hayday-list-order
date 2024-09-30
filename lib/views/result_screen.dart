import 'package:flutter/material.dart';

class ResultScreen extends StatefulWidget {
  final List<Map<String, dynamic>> products;

  const ResultScreen({super.key, required this.products});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Calculate the total amount of products
    int totalAmount = widget.products.fold(
      0,
      (sum, product) => sum + (int.tryParse(product['amount'].toString()) ?? 0),
    );

    // Convert products list to a formatted string for displaying and copying
    // String resultText = widget.products
    //     .map((product) => '${product['name']} : ${product['amount']}')
    //     .join('\n');

    // Final text includes the list and total amount of products
    // String finalText = '$resultText\nจำนวนทั้งหมด: $totalAmount ชิ้น';

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xFFe2d0bc),
        ),
        title: const Text(
          'วัตถุดิบ-ขนมที่ต้องการ',
          style: TextStyle(
            color: Color(0xFFe2d0bc),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "โน๊ต : ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    "เเคปหน้าจอส่งในเเชท",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: widget.products.asMap().entries.map(
                          (entry) {
                            int index = entry.key +
                                1; // Getting the index (starting from 1)
                            var product =
                                entry.value; // Getting the product data

                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 2.0),
                              child: Row(
                                children: [
                                  Text(
                                    '$index.', // Displaying the index number
                                    style: const TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Image.network(
                                    '${product['imageUrl']}', // Accessing the imageUrl for each product
                                    width: 35,
                                    height: 35,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) {
                                      return const Icon(
                                        Icons.error,
                                        color: Colors.redAccent,
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    '${product['name']} : ${product['amount']}', // Displaying name and amount
                                    style: const TextStyle(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ).toList(),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'จำนวนทั้งหมด: $totalAmount ชิ้น',
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 70),
              const Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '🌷THANK YOU FOR SUPPORTING',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "@V'vee Claire",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
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
