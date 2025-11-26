import 'package:flutter/material.dart';
import 'models/produit.dart';
import 'page_details_produit.dart';

class ListProduits extends StatelessWidget {
  ListProduits({super.key});

  final List<Produit> produits = [
    Produit(
      nom: "ordinateur Portable",
      description: "Laptop puissant pour travail et gaming.",
      prix: 1200.0),

      Produit(nom: "Smartphone", description: "telephone nouvelle generation avec triple camera.",
      prix: 900.0),

      Produit(nom: "casque bluetooth", description: "casque ans fil avec reduction de bruit.",
       prix: 150.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("liste de produits")),
        body: ListView.builder(
          itemCount: produits.length,
          itemBuilder: (context, index) {
            final produit = produits[index];
            return Card(
              elevation: 3,
              margin: const EdgeInsets.all(10),
              child: ListTile(
                title: Text(
                  produit.nom,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
                subtitle: Text("${produit.prix} \$"),
                trailing: ElevatedButton(
                  child: const Text("voir"),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => 
                      Detailproduit(produit: produit),
                    ),
                    );
                  },
                ),
              ),
            );
          },
        ),
    );
  }
}