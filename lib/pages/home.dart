import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Newstand.dart';
import 'package:flutter_application_1/pages/profile.dart';

// Simple shared cart manager singleton
class CartManager {
  static final CartManager _instance = CartManager._internal();

  factory CartManager() {
    return _instance;
  }

  CartManager._internal();

  final List<Map<String, dynamic>> _cartItems = [];

  List<Map<String, dynamic>> get cartItems => _cartItems;

  void addItem(Map<String, dynamic> product) {
    _cartItems.add(product);
  }

  void clearCart() {
    _cartItems.clear();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> products = [
    {
      "name": "Jordan Proto-React",
      "style": "Style: AR3240-400",
      "price": "\$110",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRI4kFvDTg0Y1Me7y5V6jTE0V75_qNgYA6utQ&s",
    },
    {
      "name": "Air Jordan XXXIV",
      "style": "Style: AR3245-400",
      "price": "\$140",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfykG8HnRW1INFwlDb3NSGJC4KhmwAs0skHg&s",
    },
    {
      "name": "Air Jordan XXXIV",
      "style": "Style: AR3245-401",
      "price": "\$140",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS669NS0IZxkV2TmkhI6dgFKR1FuCQx4bbXlQ&s",
    },
    {
      "name": "Air Jordan 4 Retro SE",
      "style": "Style: AR3245-402",
      "price": "\$160",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3FNN23p-XrbBKCpkEcf0DER6LQFanKytIAA&s",
    },
  ];

  int selectedIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Add key to scaffold for drawer control
      backgroundColor: const Color.fromARGB(255, 94, 86, 86),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        leading: const Icon(
          Icons.sports_basketball,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        centerTitle: true,
        title: Image.network(
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMIAAACUCAMAAAD26AbpAAAAY1BMVEUAAAD////8/PyysrL39/d/f3/Ozs4sLCyvr6+GhoY3Nzfq6urX19fv7+/f398vLy+np6dsbGxAQEAnJycPDw9kZGSUlJRISEi7u7tVVVWMjIx0dHSenp7BwcEICAgXFxceHh6KeE/MAAADbElEQVR4nO3a2YKiMBAFUMO+JQRadrD9/68cUHsE2QIE8OGeZ02qJFRS4OUCAAAAAAAAAAAAAAAAAAAAAABwkvDsAJ7Mn9Vf1b8hBSfOk9+1Xy74VWYsayQqNbKf1WFkLJIZzULXMLMNhabOhjFMlt6kBbTQPYotRogRr78JGoYWSApoISdXDZcQRS22JXBJiScnomUyzqhCanG4+h5+UYly8EW4OllukAeN6dvHixVCt48izg/sZvE/uKqMHy/QCLEkjCMmqRc/fcVPWJnJGPPeDHjQthZZzNX+4idetKWIvv02l5Tuvq1d/ST3SAut5MRfZ1A146WSRhsRRrrqtuNXPL6xhrbEj6ImoSaMynLL00gngdSWl8AlfA6+2+EiUNuL/1lEeXSXOcVzeCqlLnRd707JyCeF6pIPMtWrtskuSE6kp7QXP3GNQvJEF/11jT1ZxaFxqxe/ofXjJ4zLX6/J34U25KVQpJ6rDMRPPDuRNsmbSuSmUC9+bTD8eob1vdiU6H2JN/9ATqZXQ4vncQszy5QR74B3vdhWka5Rzo2R8OsEtrYyE+LWPOvvM19PDXc0fqJYW1uZCU67aJfrxghLRseWT0OLwz0PX1Z7rsXHvFuz+CeCb+Jn0jeBrqS7cy6azYxs3t94u5iUVmZS3p3RFb4Mjj25+F8JyGllJt0/f0VV6GsJ753aBniBzN1+TNabl09/4dcJbW8g3B6a7leCOgbq+EQO/mfLMkbxyr12sZ6h+dPhPTqpF//AqXMogVQ/LIFLMRiCq/qfHxxoWcZoPLsflsDgOnplwYvQN03T95OiFPzxHxfAld3KzJmp6iPHzVE7tDJzMqF7UxQrT3iubwsubxH7tDKzuLQEjM2PpFdS52MTULcyB+1iO6WgVPu1MvNu6fYMeHBiApfmpc42dStz2pu5l00LibKTXst1WPOBjjmglRESL91+/ycQ79/KiInEDz9tx7QygoSalw6Fpvezo+4olybglb1z+NkWHZIObWWE6QsSOLaVEXadeY71P34Zr+Z3Eorc0Se0Mktkc8/jiPE1m8AYZ/yBOmma+W/aBMbc8pG6pGhVdvq/3ASZFvvMgjKPf/v66TJtXj3/1qRorldZZfEN/5Nc6ieJgqIogigLz+1iAAAAAAAAAAAAAAAAAAAAAL7QP7HPJjggPKIkAAAAAElFTkSuQmCC',
          height: 30,
          alignment: Alignment.centerLeft,
        ),
        actions: [
          // Shopping Cart Icon with badge
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer(); // Open drawer on tap
                },
              ),
              if (CartManager().cartItems.isNotEmpty)
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 18,
                      minHeight: 18,
                    ),
                    child: Text(
                      '${CartManager().cartItems.length}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.search,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 133, 129, 129),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 164, 40, 31),
                ),
                child: Text(
                  'Shopping Cart',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(
                child: CartManager().cartItems.isEmpty
                    ? const Center(
                        child: Text(
                          'Your cart is empty',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      )
                    : ListView.builder(
                        itemCount: CartManager().cartItems.length,
                        itemBuilder: (context, index) {
                          final item = CartManager().cartItems[index];
                          return ListTile(
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                item["image"],
                                width: 50,
                                height: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(
                              item["name"],
                              style: const TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              item["style"],
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 12,
                              ),
                            ),
                            trailing: Text(
                              item["price"],
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        },
                      ),
              ),
              if (CartManager().cartItems.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 164, 40, 31),
                      minimumSize: const Size.fromHeight(40),
                    ),
                    onPressed: () {
                      setState(() {
                        CartManager().clearCart();
                      });
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Cart cleared')),
                      );
                    },
                    child: const Text('Clear Cart'),
                  ),
                ),
            ],
          ),
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.black, Color.fromARGB(255, 164, 40, 31)],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Text(
                "CATEGORY",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Changed to white for contrast
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  buildCategoryTab("Basketball", true),
                  buildCategoryTab("Football", false),
                  buildCategoryTab("Running", false),
                  buildCategoryTab("Soccer", false),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductTile(
                    product: product,
                    onAddToCart: () {
                      final TextEditingController qtyController =
                          TextEditingController(text: '1');
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: const Text('Add to Cart'),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'How many "${product["name"]}" do you want to add?',
                                ),
                                const SizedBox(height: 10),
                                TextField(
                                  controller: qtyController,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    labelText: 'Quantity',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.of(context).pop(), // Close dialog
                                child: const Text('Cancel'),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  final int? quantity = int.tryParse(
                                    qtyController.text,
                                  );
                                  if (quantity == null || quantity <= 0) {
                                    // Show error if input is invalid
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                          'Please enter a valid quantity',
                                        ),
                                      ),
                                    );
                                    return;
                                  }

                                  for (int i = 0; i < quantity; i++) {
                                    CartManager().addItem(product);
                                  }

                                  Navigator.of(context).pop(); // Close dialog
                                  setState(() {}); // Refresh UI

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        '$quantity x ${product["name"]} added to cart',
                                      ),
                                    ),
                                  );
                                },
                                child: const Text('Add'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedItemColor: const Color.fromARGB(134, 170, 159, 159),
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Newstand()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'Newsstand',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget buildCategoryTab(String title, bool isSelected) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromARGB(255, 164, 40, 31)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: const Color.fromARGB(255, 73, 70, 70)),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class ProductTile extends StatelessWidget {
  final Map<String, dynamic> product;
  final VoidCallback onAddToCart;

  const ProductTile({
    Key? key,
    required this.product,
    required this.onAddToCart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color.fromARGB(181, 52, 50, 50),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              product["image"],
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product["name"],
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  product["style"],
                  style: TextStyle(fontSize: 14, color: Colors.grey[300]),
                ),
                const SizedBox(height: 10),
                Text(
                  product["price"],
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent,
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 164, 40, 31),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: onAddToCart,
                  child: Text(
                    'Add to Cart',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
