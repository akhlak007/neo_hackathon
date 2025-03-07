/*import 'package:flutter/material.dart';

class CafeteriaEditPage extends StatelessWidget {
  const CafeteriaEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Cafeteria'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Cafeteria Details',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Cafeteria Name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Operating Hours',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Menu Items',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              maxLines: 4,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Save or update cafeteria information
              },
              child: const Text('Save Changes'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
import 'package:flutter/material.dart';

class CafeteriaEditScreen extends StatefulWidget {
  const CafeteriaEditScreen({super.key});

  @override
  _CafeteriaEditScreenState createState() => _CafeteriaEditScreenState();
}

class _CafeteriaEditScreenState extends State<CafeteriaEditScreen> {
  final List<String> meals = ['Vegetable Pasta', 'Chicken Burger', 'Salad Bowl'];
  final Map<String, String> mealPrices = {
    'Vegetable Pasta': '\$5.00',
    'Chicken Burger': '\$6.50',
    'Salad Bowl': '\$4.00'
  };
  final Map<String, String> mealNutrition = {
    'Vegetable Pasta': 'Calories: 400, Protein: 15g, Carbs: 60g',
    'Chicken Burger': 'Calories: 550, Protein: 30g, Carbs: 40g',
    'Salad Bowl': 'Calories: 150, Protein: 5g, Carbs: 25g'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Cafeteria'),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: meals.length,
        itemBuilder: (context, index) {
          String meal = meals[index];
          return MealEditCard(
            meal: meal,
            price: mealPrices[meal]!,
            nutrition: mealNutrition[meal]!,
            onSave: (newPrice, newNutrition) {
              setState(() {
                mealPrices[meal] = newPrice;
                mealNutrition[meal] = newNutrition;
              });
            },
          );
        },
      ),
    );
  }
}

class MealEditCard extends StatelessWidget {
  final String meal;
  final String price;
  final String nutrition;
  final Function(String, String) onSave;

  const MealEditCard({
    super.key,
    required this.meal,
    required this.price,
    required this.nutrition,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController priceController = TextEditingController(text: price);
    TextEditingController nutritionController = TextEditingController(text: nutrition);

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              meal,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(
                labelText: 'Price',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              controller: nutritionController,
              decoration: const InputDecoration(
                labelText: 'Nutrition',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                onSave(priceController.text, nutritionController.text);
                Navigator.pop(context);
              },
              child: const Text('Save Changes'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

