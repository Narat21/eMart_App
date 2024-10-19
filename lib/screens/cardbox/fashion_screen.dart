import 'package:flutter/material.dart';

class FashionScreen extends StatefulWidget {
  const FashionScreen({super.key});

  @override
  State<FashionScreen> createState() => _FashionScreenState();
}

class _FashionScreenState extends State<FashionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: const Icon(Icons.search, color: Colors.black),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.grey[350],
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          // Mega Sale Banner
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
          _nameCategorySection(),
          //const SizedBox(height: 20),
          _nameSectionHeader('New Arrivals', onSeeAllPressed: () {}),
          const SizedBox(height: 20),
          _cardImageList(
            [
              'assets/images/women1.jpg',
              'assets/images/women2.jpg',
              'assets/images/women3.jpg',
              'assets/images/women4.jpg',
              'assets/images/women5.jpg',
            ],
            [
              'The French Loft',
              'The French Loft',
              'The French Loft',
              'The French Loft',
              'The French Loft',
            ],
            [
              'Min 20% off',
              'Min 30% off',
              'Min 25% off',
              'Min 25% off',
              'Min 25% off',
            ],
          ),
        ],
      ),
    );
  }

  Widget _nameCategorySection() {
    List<String> categories = [
      'Man',
      'Woman',
      'Kids',
      'Shoes',
      'Jewelry',
      'Beauty Care',
      'Sports',
      'Toys'
    ];

    List<String> categoryImages = [
      'assets/images/suit.png',
      'assets/images/woman-clothes.png',
      'assets/images/kids.png',
      'assets/images/sneakers.png',
      'assets/images/jewelry.png',
      'assets/images/beauty.png',
      'assets/images/sports.png',
      'assets/images/toys.png',
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _nameSectionHeader('Top Categories', onSeeAllPressed: () {}),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 0.9,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    //color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(categoryImages[index], fit: BoxFit.cover),
                ),
                const SizedBox(height: 5),
                Text(
                  categories[index],
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _nameSectionHeader(String title, {VoidCallback? onSeeAllPressed}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: onSeeAllPressed,
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: const Size(30, 30),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            alignment: Alignment.centerRight,
          ),
          child: const Text("See All"),
        ),
      ],
    );
  }

  Widget _cardImageList(
      List<String> imagePaths, List<String> captions, List<String> subtitles) {
    return SizedBox(
      height: 130, // Adjust height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 120, // Adjust width
            decoration: BoxDecoration(
              //color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Circular Image
                CircleAvatar(
                  radius: 40, // Adjust size
                  backgroundImage: AssetImage(imagePaths[index]),
                ),
                const SizedBox(height: 10),
                // Title
                Text(
                  captions[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                // Subtitle
                Text(
                  subtitles[index],
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
