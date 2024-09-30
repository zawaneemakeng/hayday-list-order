import 'package:flutter/material.dart';
import 'package:hdorder/data/product_data.dart';
import 'package:hdorder/views/result_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> products = [];
  List<TextEditingController> controllers = [];
  @override
  void initState() {
    super.initState();
    controllers = List.generate(
        ProductData.products.length, (_) => TextEditingController());
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFFfaf6f2),
          title: const Text(
            'เเจ้งเตือน',
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          content: const Text(
            'กรุณาใส่จำนวนสินค้าก่อนดำเนินการต่อ.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'ตกลง',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _onFloatingActionButtonPressed() {
    products.removeWhere((product) => product['amount'].trim().isEmpty);

    if (products.isEmpty) {
      _showAlertDialog(context);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultScreen(products: products),
        ),
      );
    }
  }

  int _calculateTotalAmount() {
    int total = 0;
    for (var product in products) {
      total += int.tryParse(product['amount']) ?? 0;
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'วัตถุดิบหลัก-ขนม',
          style: TextStyle(
            color: Color(0xFFe2d0bc),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                setState(() {
                  products = [];
                  for (var controller in controllers) {
                    controller.clear(); // Clear each TextField
                  }
                });
              },
              icon: const Icon(
                Icons.restart_alt_rounded,
                color: Color(0xFFe2d0bc),
                size: 28,
              ),
            ),
          )
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 6, top: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "โน๊ต : ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "จำนวนต้องไม่มีเศษ เช่น 38, 1005 ขั้นต่ำอย่างละ20ชิ้น.",
                        style: TextStyle(
                          color: Colors.redAccent,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: ProductData.products.length,
                itemBuilder: (context, index) {
                  final product = ProductData.products[index];
                  final bool isBestSeller = index < 3;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 16,
                        ),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xFFf5e9dc),
                              radius: 25,
                              child: Image.network(
                                product.imageUrl,
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
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        product.name,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      if (isBestSeller)
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 8),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: Colors.redAccent,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: const Text(
                                            'ขายดี',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                      if (product.isOutOfStock)
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 8),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: Colors.redAccent,
                                            borderRadius:
                                                BorderRadius.circular(4),
                                          ),
                                          child: const Text(
                                            'หมด',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                  Text(
                                    'Level: ${product.level}',
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (product.isOutOfStock)
                              const SizedBox(
                                width: 80,
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'หมด',
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            else
                              SizedBox(
                                width: 80,
                                height: 50,
                                child: TextField(
                                  controller: controllers[
                                      index], // Use the controller for this product
                                  cursorColor: Colors.black,
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    hintText: 'จำนวน',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.black),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                  onChanged: (value) {
                                    setState(() {
                                      final existingProduct =
                                          products.firstWhere(
                                        (prod) => prod['name'] == product.name,
                                        orElse: () => <String,
                                            dynamic>{}, // Return an empty map
                                      );

                                      if (existingProduct.isNotEmpty) {
                                        // Update the existing product's amount
                                        existingProduct['amount'] = value;
                                      } else {
                                        // Add a new product to the list
                                        products.add({
                                          'name': product.name,
                                          'amount': value,
                                          'imageUrl': product.imageUrl,
                                        });
                                      }
                                    });
                                  },
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16, top: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'ทั้งหมด ${_calculateTotalAmount()} ชิ้น',
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 17,
                          color: Colors.redAccent),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _onFloatingActionButtonPressed();
                    },
                    child: Container(
                      height: 40,
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.black,
                      ),
                      child: const Text(
                        'ลิซรายการ',
                        style: TextStyle(
                          color: Color(0xFFe2d0bc),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
