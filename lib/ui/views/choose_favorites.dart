import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../business_logic/view_models/choose_favorites_viewmodel.dart';
import '../../services/service_locator.dart';

class ChooseFavoriteCurrencyScreen extends StatefulWidget {
  const ChooseFavoriteCurrencyScreen({super.key});

  @override
  State<ChooseFavoriteCurrencyScreen> createState() =>
      _ChooseFavoriteCurrencyScreenState();
}

class _ChooseFavoriteCurrencyScreenState
    extends State<ChooseFavoriteCurrencyScreen> {
  ChooseFavoritesViewModel model = serviceLocator<ChooseFavoritesViewModel>();

  @override
  void initState() {
    super.initState();
    model.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choose Currencies')),
      body: ChangeNotifierProvider<ChooseFavoritesViewModel>(
        create: (context) => model,
        child: Consumer<ChooseFavoritesViewModel>(
          builder: (context, model, child) => ListView.builder(
            itemCount: model.choices.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: SizedBox(
                    width: 60,
                    child: Text(
                      '${model.choices[index].flag}',
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                  // 4
                  title: Text('${model.choices[index].alphabeticCode}'),
                  subtitle: Text('${model.choices[index].longName}'),
                  trailing: (model.choices[index].isFavorite ?? false)
                      ? const Icon(Icons.favorite, color: Colors.red)
                      : const Icon(Icons.favorite_border),
                  onTap: () => model.toggleFavoriteStatus(index),
                ),
              );
            },
          ),
        ),
      ),
    );
  }


}
