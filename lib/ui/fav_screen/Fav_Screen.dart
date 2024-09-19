import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Fav_Screen extends StatefulWidget {
  const Fav_Screen({super.key});

  @override
  State<Fav_Screen> createState() => _Fav_ScreenState();
}

class _Fav_ScreenState extends State<Fav_Screen> {
  final List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10'
  ];
  final Set<String> favorites = <String>{};

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();

    final savedFavorites = prefs.getStringList('favorites') ?? [];
    setState(() {
      favorites.addAll(savedFavorites);
    });
  }

  Future<void> _toggleFavorite(String item) async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      if (favorites.contains(item)) {
        favorites.remove(item);
      } else {
        favorites.add(item);
      }
      prefs.setStringList('favorites', favorites.toList());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          final isFavorite = favorites.contains(item);
          return ListTile(
            title: Text(item),
            trailing: IconButton(
              icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
              onPressed: () => _toggleFavorite(item),
            ),
          );
        },
      ),
    );
  }
}
