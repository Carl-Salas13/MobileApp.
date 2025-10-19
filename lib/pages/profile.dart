import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Newstand.dart';
import 'package:flutter_application_1/pages/home.dart';

// Singleton CartManager (keep consistent with your Home)
class CartManager {
  static final CartManager _instance = CartManager._internal();

  factory CartManager() => _instance;

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

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int selectedIndex = 2; // Start on Profile tab

  // Editable profile info
  String phone = '09456783539';
  String location = 'Surigao City';
  String birthday = 'Feb. 13, 2004';
  String aboutMe =
      'Passionate Flutter developer with 5+ years of experience in building cross-platform mobile apps.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 6, 3, 3),
        leading: const Icon(Icons.sports_basketball, color: Colors.white),
        centerTitle: true,
        title: Image.network(
          'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARMAAAC3CAMAAAAGjUrGAAAAeFBMVEUAAAD///94eHjz8/Pp6enIyMjf39/7+/uVlZXU1NSHh4dBQUFWVla7u7uwsLBnZ2csLCyjo6OQkJDt7e2pqanOzs5oaGji4uITExMnJydAQEC+vr44ODigoKDZ2dlgYGBMTEx/f38cHBwwMDCKiopISEgVFRVQUFCSNpvqAAADpElEQVR4nO3c63aiMBSG4YmIhxZtFerZUds63v8djnVFSyCcFJLgep/fLTtsnM3XpJ0/fwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKyZ2V5ASV/BwlSpkalCD+mMxuae3WhqrNS9gqgrxktz9QZ9c7XusRoMhegeTJbsiI7JctUsX/y+EGL9arRqIDyj9SrojLxzP4Q3MFx3I8SL4ZKlvI3n4mL4Zrr04vzJNF2zULD9K6Txu/nyoRCR+ao5VtOPaz9E18on+Od5GHzDFZADVfIDK4sYnUv3rFRO64zC336I/sRYYFVNf6p/26mt2EVzEdezlg52l/qWnsfN6XegSobDSNzysoC5tfpnm9hAlYyHEcUlD9l763we1v1kQ8TQ7g/o8gntrBRXB6rNMBI3kOswXzk5UK2Gkbi9XElotuxpO9T1w1oYUVz/KX+YK6kZqJK1MKK4rW5spt55oHoZDbEYRhSH24K2BqrNxrqBKo3shRHF5++Smk4Du6iX3Q/LYUQRC45N7sQeBxkDVbIcRhQvsXU19aC+vv3cftgPI6r4ypqIsYucgSrZDyOqdXxxft1Xn427Bf1wI4wo9sryunVeOpjkDVTJjTCiSgTrui5bNFAlR8KIqpNYZB1rfP/20z/i6rgSRhKS8enRcL+QhzDFHAojquTHRIhHXollBqpk/pimtPQ93PvmKTVQr9wKI6qdZr137Cq9lhuokmthJEF3KxV/q0A9hCnmXBhJWOqfY/kLlB6o1347GEYSJvqVl9u7fys/UCUnw0hS1kP2NgXfGKQOYYpZPKapYJ99Azl7S6tB1p5hDmfDSFKUcxP9ie4s/TitNlAlh8NIUsE86I4Px9vXHjuDtfbMoZjLYSRpUeqOvDD07vlsSI6HkaR0rq+d62EkJW+c1KEFYSSlSh6vrhVhJKVaBK3G0Z2RQo01pDVhJOVfQx1x6Zimqk0jHWlTGEk71t+QloWRtFXdHWldGEn7LL7LCtoYRjRq7Eg7w4hGbfmkrWFEo+ikv5z2hhGdaQ0dadHOSCn6Heoq2h1GtCocUmm0PoxozR7oyBOEEb07NxOfJYxo3RdlnyaM6G2rd2S0sr3oplU8qnmuMJKlyrvHt/OHLOaV3ZXtuv8fO9SnzPa9Fz39FFGdcv4k4EcYHYsv8nQO2V35mD5ffi8p0PxyTehP97bXZdnXIfJ7odfvh/PhenI42V4PAAAAAAAAAAAAAAAAAAAAAAAAAAAAcPMfBpYlbp8VKLgAAAAASUVORK5CYII=',
          height: 30,
          alignment: Alignment.centerLeft,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {
              _showCartItemCountDialog();
            },
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.settings, color: Colors.white),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Color.fromARGB(255, 86, 21, 16)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: kToolbarHeight + 20),
            const CircleAvatar(
              radius: 90,
              backgroundImage: NetworkImage(
                'https://png.pngtree.com/png-vector/20231019/ourmid/pngtree-user-profile-avatar-png-image_10211467.png',
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Carl Salas",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "CarlFrancis.Salas@normi.edu.ph",
              style: TextStyle(color: Colors.grey),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildProfileItem(
                    Icons.phone,
                    'Phone',
                    phone,
                    () => _showEditDialog('Phone', phone, (newValue) {
                      setState(() {
                        phone = newValue;
                      });
                    }),
                  ),
                  _buildProfileItem(
                    Icons.location_on,
                    'Location',
                    location,
                    () => _showEditDialog('Location', location, (newValue) {
                      setState(() {
                        location = newValue;
                      });
                    }),
                  ),
                  _buildProfileItem(
                    Icons.cake,
                    'Birthday',
                    birthday,
                    () => _showEditDialog('Birthday', birthday, (newValue) {
                      setState(() {
                        birthday = newValue;
                      });
                    }),
                  ),
                  _buildProfileItem(
                    Icons.info,
                    'About Me',
                    aboutMe,
                    () => _showEditDialog('About Me', aboutMe, (newValue) {
                      setState(() {
                        aboutMe = newValue;
                      });
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(134, 170, 159, 159),
        currentIndex: selectedIndex,
        onTap: (index) {
          if (index != selectedIndex) {
            setState(() {
              selectedIndex = index;
            });

            if (index == 0) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            } else if (index == 1) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Newstand()),
              );
            }
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // Show dialog with cart item count
  void _showCartItemCountDialog() {
    final cartItems = CartManager().cartItems;
    final itemCount = cartItems.length;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Shopping Cart'),
          content: Text(
            itemCount == 0
                ? 'Your cart is empty.'
                : 'You have $itemCount product${itemCount > 1 ? 's' : ''} in your cart.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
            if (itemCount > 0)
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  _showCartSideSheet(context);
                },
                child: const Text('View Cart'),
              ),
          ],
        );
      },
    );
  }

  // Dialog to edit profile fields (multi-line for About Me)
  void _showEditDialog(
    String title,
    String currentValue,
    Function(String) onSave,
  ) {
    final controller = TextEditingController(text: currentValue);
    final isAboutMe = title == 'About Me';

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit $title'),
          content: TextField(
            controller: controller,
            autofocus: true,
            maxLines: isAboutMe ? 5 : 1,
            decoration: InputDecoration(
              labelText: title,
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                onSave(controller.text.trim());
                Navigator.of(context).pop();
                ScaffoldMessenger.of(
                  context,
                ).showSnackBar(SnackBar(content: Text('$title updated')));
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }

  // Show generic side sheet for profile items (if needed)
  void _showSideSheet(
    BuildContext context,
    String title,
    String description,
    IconData icon,
  ) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'SideSheet',
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
            ),
            child: Material(
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(icon, size: 32, color: Colors.black87),
                      const SizedBox(width: 12),
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Edit feature coming soon!'),
                        ),
                      );
                    },
                    icon: const Icon(Icons.edit),
                    label: const Text('Edit'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
        );
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  // Show cart side sheet (detailed view)
  void _showCartSideSheet(BuildContext context) {
    final cartItems = CartManager().cartItems;

    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'CartSideSheet',
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (context, animation, secondaryAnimation) {
        return Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(24),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(20)),
            ),
            child: Material(
              color: Colors.transparent,
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.shopping_cart, size: 32),
                      const SizedBox(width: 12),
                      const Text(
                        'Shopping Cart',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Expanded(
                    child: ListView.separated(
                      itemCount: cartItems.length,
                      separatorBuilder: (_, __) => const Divider(),
                      itemBuilder: (context, index) {
                        final product = cartItems[index];
                        return ListTile(
                          title: Text(product['name']),
                          subtitle: Text('\$${product['price'].toString()}'),
                          trailing: IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              setState(() {
                                cartItems.removeAt(index);
                              });
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      CartManager().clearCart();
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Cart cleared')),
                      );
                    },
                    child: const Text('Clear Cart'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        final curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: Curves.easeInOut,
        );
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(1, 0),
            end: Offset.zero,
          ).animate(curvedAnimation),
          child: child,
        );
      },
    );
  }

  Widget _buildProfileItem(
    IconData icon,
    String title,
    String subtitle,
    VoidCallback onTap,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: const Color.fromARGB(255, 201, 197, 197),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(title, style: const TextStyle(color: Colors.white)),
        subtitle: Text(
          subtitle,
          style: const TextStyle(color: Colors.white70),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: const Icon(Icons.edit, color: Colors.white),
        onTap: onTap,
      ),
    );
  }
}
