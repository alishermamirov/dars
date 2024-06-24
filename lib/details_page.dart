// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dars/models/recipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    super.key,
  });

  // static const routeName = "/details-page";

  Future showmydialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Bu title"),
        content: const Text("Bu asosiy qismi, content"),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Ok"),
          ),
          TextButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            child: const Text("Chiqish"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)!.settings.arguments as Recipe;
    return Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Text(meal.price.toString()),
            ElevatedButton(
              onPressed: () {
                showmydialog(context);
              },
              child: const Text("Dialog"),
            )
          ],
        ));
  }
}
