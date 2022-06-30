import 'package:my_sport/src/models/cart_item_model.dart';
import 'package:my_sport/src/models/item_model.dart';
import 'package:my_sport/src/models/order_model.dart';
import 'package:my_sport/src/models/user_model.dart';

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
    unity: 'und.');

ItemModel flamengo = ItemModel(
    description: 'Camisa do Flamengo 2022',
    imgUrl: 'assets/shirts/flamengo.png',
    price: 179.90,
    itemName: 'Flamengo',
    unity: 'und.');

ItemModel santos = ItemModel(
    description: 'Camisa do Santos 2022',
    imgUrl: 'assets/shirts/santos.png',
    price: 179.90,
    itemName: 'Santos',
    unity: 'und.');

ItemModel vasco = ItemModel(
    description: 'Camisa do Vasco 2022',
    imgUrl: 'assets/shirts/vasco.png',
    price: 179.90,
    itemName: 'Vasco',
    unity: 'und.');

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

List<CartItemModel> cartItems = [
  CartItemModel(
    item: brasil,
    quantity: 1,
  ),
  CartItemModel(
    item: borussia,
    quantity: 1,
  ),
  CartItemModel(
    item: city,
    quantity: 3,
  ),
];

UserModel user = UserModel(
  phone: '86 999510634',
  name: 'Valterlim Júnior',
  address: 'Dirceu',
  cpf: '06928352370',
  email: 'valterlimjuniorr@gmail.com',
  password: '',
);

List<OrderModel> orders = [
  //Request 01
  OrderModel(
    id: 'asd6a54da6s2d1',
    createdDateTime: DateTime.parse(
      '2022-06-28 00:15:25.450',
    ),
    overdueDateTime: DateTime.parse(
      '2023-06-28 00:15:25.450',
    ),
    items: [
      CartItemModel(
        item: brasil,
        quantity: 2,
      ),
      CartItemModel(
        item: city,
        quantity: 2,
      ),
    ],
    status: 'pending_payment',
    copyAndPaste: 'q1w2e3r4t5y6',
    total: 11.0,
  ),

  //Request 02
  OrderModel(
    id: 'a65s4d6a893se8',
    createdDateTime: DateTime.parse(
      '2022-06-28 00:15:25.450',
    ),
    overdueDateTime: DateTime.parse(
      '2023-06-28 00:15:25.450',
    ),
    items: [
      CartItemModel(
        item: borussia,
        quantity: 1,
      ),
    ],
    status: 'delivered',
    copyAndPaste: 's58w3w21q83',
    total: 11.5,
  ),

  //Request 03
  OrderModel(
    id: 'a897ds6sa29wd3',
    createdDateTime: DateTime.parse(
      '2020-06-28 00:15:25.450',
    ),
    overdueDateTime: DateTime.parse(
      '2021-06-28 00:15:25.450',
    ),
    items: [
      CartItemModel(
        item: vasco,
        quantity: 1,
      ),
    ],
    status: 'refunded',
    copyAndPaste: 'q596sw93s5',
    total: 11.5,
  ),
];
