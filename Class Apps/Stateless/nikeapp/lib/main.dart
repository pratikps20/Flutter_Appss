import 'package:flutter/material.dart';

void main() {
  runApp(const NikeApp());
}

class NikeApp extends StatefulWidget {
  const NikeApp({super.key});

  @override
  State<NikeApp> createState() => _NikeAppState();
}

class _NikeAppState extends State<NikeApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Nike App",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Shoes"),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart,
                  color: Colors.black), // Change the icon here
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 300,
              width: 300,
              child: Image.network(
                  "data:image/jpeg;base64,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"),
            ),
            const SizedBox(height: 20),
            const Text(
              "Nike Air Force 1.07",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 25,
                    width: 90,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(
                            const Color.fromARGB(255, 23, 61, 93)),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Shoes",
                        style: TextStyle(color: Colors.white),
                      ), // Text for the first button
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    height: 25,
                    width: 90,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.purple)),
                      onPressed: () {},
                      child: const Text(
                        "Add",
                        style: TextStyle(color: Colors.white),
                      ), // Text for the second button
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 20.0), // Add horizontal and vertical padding
              child: Text(
                "Nike, Inc. (stylized as NIKE) is an American athletic footwear and apparel corporation headquartered near Beaverton, Oregon, United States. It is the world's largest supplier of athletic shoes and apparel and a major manufacturer of sports equipment, with revenue in excess of US billion in its fiscal year 2022.",
                textAlign: TextAlign
                    .center, // Center align the text for better presentation
                style:
                    TextStyle(fontSize: 16), // Adjust font size for readability
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Quantity",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 10),
                IconButton(
                  icon: const Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      if (count > 0) count--; // Prevent negative quantity
                    });
                  },
                ),
                Text("$count"), // Display the current count
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
