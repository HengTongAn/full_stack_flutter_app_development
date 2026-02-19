import 'package:flutter/material.dart';

class ScrollableWidget1 extends StatelessWidget {
  const ScrollableWidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text(
          "Products",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                "https://quickpcfixaz.net/wp-content/uploads/2025/12/1.1.jpg",
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
              ),

              const SizedBox(height: 20),

              Text(
                "MacBook Series",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2.0,
                          style: BorderStyle.solid
                        ),
                        color: Colors.red[200]
                      ),
                      child: Image.network(
                        "https://cdsassets.apple.com/live/7WUAS350/images/tech-specs/macbook-pro-14-inch-m3-pro-or-m3.png",
                        fit: BoxFit.contain
                      ),
                    ),
                    Container(
                      width: 140,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://photos5.appleinsider.com/price_guide/macbook-pro-16-inch-m4-pro-pg-header.png",
                          fit: BoxFit.contain
                      ),
                    ),
                    Container(
                      width: 140,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://www.ivory.co.il/files/catalog/org/1731575874m74Di.webp",
                          fit: BoxFit.contain
                      ),
                    ),
                    Container(
                      width: 140,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://cdn0.it4profit.com/s3size/rt:fill/w:900/h:900/g:no/el:1/f:webp/plain/s3://cms/product/1e/21/1e21fa9e678467e0af8c74862a1645c4/250704160030759250.webp",
                          fit: BoxFit.contain
                      ),
                    ),
                    Container(
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://inspireonline.in/cdn/shop/files/airm3_hero_small_2x_airm3.png?1708555710106",
                          fit: BoxFit.contain
                      ),
                    ),
                    Container(
                      width: 140,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://www.ishop.mu/cdn/shop/collections/macbook_air_13_m4_428ce528-ee24-412f-ae91-aa12e0d3025b.png?v=1758020740",
                          fit: BoxFit.contain
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "iPhone Series",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://www.smart.com.kh/_next/image?url=https%3A%2F%2Fsmartaxiata-website-prod-v2.s3.ap-southeast-1.amazonaws.com%2Fi_Phone_Device_List_Smart_Website_1280_x_853_i_Phone_17_Pro_1_c26420e4fa.png&w=3840&q=75",
                          fit: BoxFit.contain
                      ),
                    ),
                    Container(
                      width: 140,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://www.smart.com.kh/_next/image?url=https%3A%2F%2Fsmartaxiata-website-prod-v2.s3.ap-southeast-1.amazonaws.com%2Fi_Phone_Device_List_Smart_Website_1280_x_853_i_Phone_17_Pro_Max_3_be96a96468.png&w=3840&q=75",
                          fit: BoxFit.contain
                      ),
                    ),
                    Container(
                      width: 140,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://cdn-ultra.esempla.com/storage/webp/ce59d539-9494-45d6-8a47-821e1bd5d297.webp",
                          fit: BoxFit.contain
                      ),
                    ),
                    Container(
                      width: 140,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-air-digitalmat-gallery-5-202509?wid=728&hei=666&fmt=p-jpg&qlt=95&.v=cjBEZlU5bVdKZEVBTk45K09QMzAwR015UmNzenFKUHB0bGtqQUxXNExEVnZibThWRUlEV2tlZ2JSNmpmUlp1TlFuOTJXc2JVdks4czlZWHJTOHkzNkg4SnkwY0diclR3aWNnek5QTEFaZFRUdFBEQ2lzRUQ0Yk4rVVZQOGJ6ZHA",
                          fit: BoxFit.contain
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Text(
                "Accessories",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                height: 170,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 140,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/airpods-pro-3-hero-select-202509?wid=532&hei=582&fmt=png-alpha&.v=cmp4MmZ6OWxOeHNNTXh4SzlBNUpEb1RucE9zZTI5eEREaWZpY29lSld3eG5ybFVoUG5ONDlkK2JkbHErdVFSNVM0TjRWdzF2UjRGVEY0c3dBQVZ6VFk1ZmVZeDNxQ3ljaDhwR2JKTTZHaDg",
                          fit: BoxFit.contain
                      ),
                    ),
                    Container(
                      width: 140,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/airpods-4-anc-select-202409?wid=532&hei=582&fmt=png-alpha&.v=Qklmb1JJend3cVIxSUxIeFBIRk96bThJMURFZUhTTm9tejgvK2t1SGM0Z2o5Z1E1ellDTTZFb0JncEN1V1JWSkoyZWdNMk9CcVkreUdEWkc5LzhTdmhnYWU4aDlESWZ0ano5VnZaZFRrblU",
                          fit: BoxFit.contain
                      ),
                    ),
                    Container(
                      width: 140,
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/airpods-max-select-202409-midnight?wid=532&hei=582&fmt=png-alpha&.v=azQxRkVJKzd6V3J0aGNqWFhLMzBmdmVWNWdHYnp5cHkwMldsSElEOHpydzVnNEpSU25rZDdFWXRRajVqcEhqRlNIVjdYdVpHUzVnakg0UTYvWXlHaWNzNkh1dXhBL3hoTFhpMitUTmx4MTMrNmVjbmk5c1V4VVk2VEt3TGcxekg",
                          fit: BoxFit.contain
                      ),
                    ),
                    Container(
                      width: 140,
                      margin: EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2.0,
                              style: BorderStyle.solid
                          ),
                          color: Colors.red[200]
                      ),
                      child: Image.network(
                          "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/MXK83?wid=532&hei=582&fmt=png-alpha&.v=eFlJa0thaHg0Zk5Uc3lIcElEZThBZ0hqc0NvK2RZTVd5TWVhUDFuQlo0MWlQcU93cWwvb0J4b2lHc01aQ3FTRmpTVDErb2pvVFNyNGl4TzdpOGhXQnc",
                          fit: BoxFit.contain
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
