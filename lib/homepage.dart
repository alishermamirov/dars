// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:dars/constants.dart';

import 'models/recipe.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // static const routeName = "/home-page";

  static List<Recipe> list = [
    Recipe(
      title: "Osh",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNSkC451KlkejbP7cK_hXQsxNEAcpJbn6kWg&s",
      ingredients: "nimadirlar",
      price: 20000,
    ),
    Recipe(
      title: "Osh",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNSkC451KlkejbP7cK_hXQsxNEAcpJbn6kWg&s",
      ingredients: "nimadirlar",
      price: 20000,
    ),
    Recipe(
      title: "Osh",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNSkC451KlkejbP7cK_hXQsxNEAcpJbn6kWg&s",
      ingredients: "nimadirlar",
      price: 20000,
    ),
    Recipe(
      title: "Osh",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNSkC451KlkejbP7cK_hXQsxNEAcpJbn6kWg&s",
      ingredients: "nimadirlar",
      price: 20000,
    ),
    Recipe(
      title: "somsa",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlm51xYVVVlsXjdR-bhQ6mdst2PB_qaH0Mxg&s",
      ingredients: "nimadirlar",
      price: 785,
    ),
    Recipe(
      title: "manti",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8hg7Iy03If6s4zXNXKHgsM-sM5PwgWZPk6w&s",
      ingredients: "nimadirlar",
      price: 2075000,
    ),
    Recipe(
      title: "Salad",
      imageUrl:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBudoQTC7M_odS0t8QtOqUpfvd4fHXe50uQg&s",
      ingredients: "nimadirlar",
      price: 85,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          "Recipe calculator",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Lato",
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final item = list[index];
          return cardItem(
            meal: item,
          );
        },
      ),
    );
  }
}

// ignore: camel_case_types
class cardItem extends StatelessWidget {
  final Recipe meal;
  const cardItem({
    super.key,
    required this.meal,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          Navigator.pushNamed(context, Routes.details, arguments: meal),
      child: SizedBox(
        height: 310,
        child: Card(
          margin: const EdgeInsets.all(14),
          shadowColor: Colors.grey,
          elevation: 1,
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: NetworkImage(meal.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
                margin: const EdgeInsets.all(12),
              ),
              Text(
                meal.title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text(
                "${meal.price.toString()}so'm",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
