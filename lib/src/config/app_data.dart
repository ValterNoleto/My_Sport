import 'package:my_sport/src/models/item_model.dart';

ItemModel brasil = ItemModel(
  description: 'Camisa do Brasil 2022',
  imgUrl: 'assets/shirts/brasil.png',
  price: 179.90,
  itemName: 'Brasil',
  unity: 'und.',
);

ItemModel borussia = ItemModel(
  description: 'Camisa do Borussia 22/23',
  imgUrl: 'assets/shirts/borussia.png',
  price: 179.90,
  itemName: 'Borussia',
  unity: 'und.',
);

ItemModel city = ItemModel(
  description: 'Camisa do City 22/23',
  imgUrl: 'assets/shirts/city.png',
  price: 179.90,
  itemName: 'Manchester City',
  unity: 'und.'
);

ItemModel flamengo = ItemModel(
  description: 'Camisa do Flamengo 2022',
  imgUrl: 'assets/shirts/flamengo.png',
  price: 179.90,
  itemName: 'Flamengo',
  unity: 'und.'
);

ItemModel santos = ItemModel(
  description: 'Camisa do Santos 2022',
  imgUrl: 'assets/shirts/santos.png',
  price: 179.90,
  itemName: 'Santos',
  unity: 'und.'
);

ItemModel vasco = ItemModel(
  description: 'Camisa do Vasco 2022',
  imgUrl: 'assets/shirts/vasco.png',
  price: 179.90,
  itemName: 'Vasco',
  unity: 'und.'
);

List<ItemModel> items = [
  brasil,
  borussia,
  city,
  flamengo,
  santos,
  vasco,
];

List<String> categories = [
    'Camisas',
    'Chuteiras',
    'Tênis',
    'Acessórios',
  ];