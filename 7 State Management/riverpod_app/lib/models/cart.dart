// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/catalog.dart';

final cartProvider = ChangeNotifierProvider<CartModel>((ref) {
  return CartModel();
});

class CartModel extends ChangeNotifier {
  final CatalogModel _catalog = CatalogModel();
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();
  int get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemIds.add(item.id);
    notifyListeners();
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
    notifyListeners();
  }
}
