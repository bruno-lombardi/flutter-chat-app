import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Mensagens', 'Grupos', 'Pedidos de Amizade'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 20.0),
                child: Text(categories[index],
                    style: TextStyle(
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.white60,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.5)),
              ),
            );
          }),
    );
  }
}
