import 'package:flutter/material.dart';
import 'package:flutter_cadastro/produto.dart';
import 'package:flutter_cadastro/produtodetalhes.dart';

class ProductPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Produto 1',
      description: 'Descrição do Produto 1',
      price: 100.0,
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Product(
      name: 'Produto 2',
      description: 'Descrição do Produto 2',
      price: 150.0,
      imageUrl: 'https://via.placeholder.com/150',
    ),
    // Adicione mais produtos conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Produtos'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(products[index].imageUrl),
            title: Text(products[index].name),
            subtitle: Text('R\$ ${products[index].price.toStringAsFixed(2)}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailPage(product: products[index])),
              );
            },
          );
        },
      ),
    );
  }
}
