import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScrollableWidget(),
    );
  }
}

class ScrollableWidget extends StatelessWidget {
  const ScrollableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scrollable Widgets"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://quickpcfixaz.net/wp-content/uploads/2025/12/1.1.jpg",
                width: MediaQuery.of(context).size.width,
                height: 200,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 10),

              const Text(
                "Pro Series",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        "https://cdsassets.apple.com/live/7WUAS350/images/tech-specs/macbook-pro-14-inch-m3-pro-or-m3.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        "https://photos5.appleinsider.com/price_guide/macbook-pro-16-inch-m4-pro-pg-header.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        "https://www.ivory.co.il/files/catalog/org/1731575874m74Di.webp",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        "https://cdn0.it4profit.com/s3size/rt:fill/w:900/h:900/g:no/el:1/f:webp/plain/s3://cms/product/1e/21/1e21fa9e678467e0af8c74862a1645c4/250704160030759250.webp",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              const Text(
                "Air Series",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        "https://cdsassets.apple.com/live/7WUAS350/images/tech-specs/macbook-pro-14-inch-m3-pro-or-m3.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        "https://photos5.appleinsider.com/price_guide/macbook-pro-16-inch-m4-pro-pg-header.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        "https://www.ivory.co.il/files/catalog/org/1731575874m74Di.webp",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Container(
                      width: 150,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.red[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(
                        "https://cdn0.it4profit.com/s3size/rt:fill/w:900/h:900/g:no/el:1/f:webp/plain/s3://cms/product/1e/21/1e21fa9e678467e0af8c74862a1645c4/250704160030759250.webp",
                        fit: BoxFit.contain,
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
