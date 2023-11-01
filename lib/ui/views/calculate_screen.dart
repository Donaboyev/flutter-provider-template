import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../business_logic/view_models/calculate_screen_viewmodel.dart';
import '../../services/service_locator.dart';
import 'choose_favorites.dart';

class CalculateCurrencyScreen extends StatefulWidget {
  const CalculateCurrencyScreen({super.key});

  @override
  State<CalculateCurrencyScreen> createState() => _CalculateCurrencyScreenState();
}

class _CalculateCurrencyScreenState extends State<CalculateCurrencyScreen> {
  CalculateScreenViewModel model = serviceLocator<CalculateScreenViewModel>();
  TextEditingController? _controller;

  @override
  void initState() {
    super.initState();
    model.loadData();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CalculateScreenViewModel>(
      create: (context) => model,
      child: Consumer<CalculateScreenViewModel>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            title: const Text('Moola X'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseFavoriteCurrencyScreen(),
                    ),
                  );
                  model.refreshFavorites();
                },
              )
            ],
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              baseCurrencyTitle(model),
              baseCurrencyTextField(model),
              quoteCurrencyList(model),
            ],
          ),
        ),
      ),
    );
  }

  Padding baseCurrencyTitle(CalculateScreenViewModel model) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 32, right: 32, bottom: 5),
      child: Text(
        '${model.baseCurrency.longName}',
        style: const TextStyle(fontSize: 25),
      ),
    );
  }

  Padding baseCurrencyTextField(CalculateScreenViewModel model) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32, bottom: 32),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: TextField(
          style: const TextStyle(fontSize: 20),
          controller: _controller,
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: SizedBox(
                width: 60,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${model.baseCurrency.flag}',
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
            labelStyle: const TextStyle(fontSize: 20),
            hintStyle: const TextStyle(fontSize: 20),
            hintText: 'Amount to exchange',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(20),
          ),
          keyboardType: TextInputType.number,
          onChanged: (text) {
            model.calculateExchange(text);
          },
        ),
      ),
    );
  }

  Expanded quoteCurrencyList(CalculateScreenViewModel model) {
    return Expanded(
      child: ListView.builder(
        itemCount: model.quoteCurrencies.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: SizedBox(
                width: 60,
                child: Text(
                  '${model.quoteCurrencies[index].flag}',
                  style: const TextStyle(fontSize: 30),
                ),
              ),
              title: Text(model.quoteCurrencies[index].longName ?? ''),
              subtitle: Text(model.quoteCurrencies[index].amount ?? ''),
              onTap: () {
                model.setNewBaseCurrency(index);
                _controller?.clear();
              },
            ),
          );
        },
      ),
    );
  }
}
