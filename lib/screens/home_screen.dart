import 'package:flutter/material.dart';
import '../widget/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        "image": "assets/images/image1.jpg",
        "name": "T-Shirt",
        "rating": 55,
        "price": 300,
      },
      {
        "image": "assets/images/image2.jpg",
        "name": "Jacket",
        "rating": 666,
        "price": 100,
      },
      {
        "image": "assets/images/image3.jpg",
        "name": "Child Jacket",
        "rating": 323,
        "price": 600,
      },
      {
        "image": "assets/images/image3.jpg",
        "name": "Child Jacket",
        "rating": 323,
        "price": 600,
      },
      {
        "image": "assets/images/image3.jpg",
        "name": "Child Jacket",
        "rating": 323,
        "price": 600,
      },
      {
        "image": "assets/images/image3.jpg",
        "name": "Child Jacket",
        "rating": 323,
        "price": 600,
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFFCEFF1),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Find Your Product",
                        prefixIcon: Icon(Icons.search),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Icon(Icons.notifications, color: Colors.pink),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Image.asset("assets/images/freed.png", height: 60),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FilterChipWidget(label: "All", selected: true),
                    FilterChipWidget(label: "Category"),
                    FilterChipWidget(label: "Top"),
                    FilterChipWidget(label: "Recommended"),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 220, // Adjust height as needed
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: SizedBox(
                        width: 140, // Adjust width as needed
                        child: ProductCard(
                          image: product['image'] as String,
                          name: product['name'] as String,
                          rating: product['rating'] as int,
                          price: product['price'] as int,
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Newest Products",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 500, // Adjust height as needed
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ProductCard(
                      image: product['image'] as String,
                      name: product['name'] as String,
                      rating: product['rating'] as int,
                      price: product['price'] as int,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pink,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: Colors.pink,
              child: Icon(Icons.qr_code, color: Colors.white),
            ),
            label: "",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
        ],
      ),
    );
  }
}

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool selected;
  const FilterChipWidget({
    super.key,
    required this.label,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ChoiceChip(
        label: Text(label),
        selected: selected,
        selectedColor: Colors.pink.shade100,
        backgroundColor: Colors.white,
        labelStyle: TextStyle(
          color: selected ? Colors.pink : Colors.black,
          fontWeight: FontWeight.bold,
        ),
        onSelected: (_) {},
      ),
    );
  }
}
