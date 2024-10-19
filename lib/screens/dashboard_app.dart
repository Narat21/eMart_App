import 'package:flutter/material.dart';
import 'package:midterm_emart_app/screens/cardbox/cab_screen.dart';
import 'package:midterm_emart_app/screens/cardbox/fashion_screen.dart';
import 'package:midterm_emart_app/screens/cardbox/food_screen.dart';
import 'package:midterm_emart_app/screens/cardbox/parcel_screen.dart';
import 'package:midterm_emart_app/screens/cardbox/cosmeticscreen.dart';
import 'package:midterm_emart_app/screens/cardbox/restur.dart';

class DashboardApp extends StatefulWidget {
  const DashboardApp({super.key});

  @override
  State<DashboardApp> createState() => _DashboardAppState();
}

class _DashboardAppState extends State<DashboardApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'eMart',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.qr_code),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.black,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
              color: Colors.black,
            ),
          ],
        ),
        drawer: const Drawer(),
        backgroundColor: Colors.grey[350],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                // Banner Section
                Container(
                  // padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/banner.jpg',
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Categories Section
                SizedBox(
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: const [
                      CategoryCard(
                        image: AssetImage('assets/images/cosmetics.png'),
                        title: 'Cosmetic',
                      ),
                      CategoryCard(
                        image: AssetImage('assets/images/fashion.png'),
                        title: 'Fashion',
                      ),
                      CategoryCard(
                        image: AssetImage('assets/images/motorbike.png'),
                        title: 'Restaurants',
                      ),
                      CategoryCard(
                        image: AssetImage('assets/images/cabservice.png'),
                        title: 'Cab Service',
                      ),
                      CategoryCard(
                        image: AssetImage('assets/images/foodgrocery.png'),
                        title: 'Food Grocery',
                      ),
                      CategoryCard(
                        image: AssetImage('assets/images/parcel.png'),
                        title: 'Parcel',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final ImageProvider image;
  final String title;

  const CategoryCard({super.key, required this.image, required this.title});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
        child: InkWell(
          onTap: () {
            if (title == 'Cosmetic') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Cosmeticscreen(),
                ),
              );
            } else if (title == 'Fashion') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FashionScreen(),
                ),
              );
            } else if (title == 'Restaurants') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Restur(),
                ),
              );
            } else if (title == 'Cab Service') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CabScreen(),
                ),
              );
            } else if (title == 'Food Grocery') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FoodScreen(),
                ),
              );
            } else if (title == 'Parcel') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ParcelScreen(),
                ),
              );
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: image,
                height: 50,
                width: 50,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              Text(title, style: const TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
