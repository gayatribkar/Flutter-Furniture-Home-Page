import "package:flutter/material.dart";
import '../models/funituremodel.dart';

class FurnitureData with ChangeNotifier {
  List<Furnituredef> _items = [
    Furnituredef(
        title: "Royal Blue Chair",
        description: "Comfortable wooden chair ",
        id: "001",
        price: "Rs.1000",
        ratings: "4.9",
        iconImage:
            "https://ii1.pepperfry.com/media/catalog/product/r/o/800x880/royal-wing-chair-in-blue-color-by-dreamzz-furniture-royal-wing-chair-in-blue-color-by-dreamzz-furnit-6hcjya.jpg",
        isFav: false,
        categories: [
          "Chairs",
        ]),
    Furnituredef(
        title: "Wing Chair",
        description: "Comfortable wooden chair ",
        id: "002",
        price: "Rs.1200",
        ratings: "3.7",
        iconImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTyTKmNJKF-8MjJfA_mb5kmjAsZ_Y7Gst11LMgTgcEEE-cEFbj-zgAA7Bo65HrfDVosJXE&usqp=CAU",
        isFav: false,
        categories: ["Chairs", "popular"]),
    Furnituredef(
        title: "Wooden wing chair",
        description: "Comfortable wooden chair ",
        id: "002",
        price: "Rs.1200",
        ratings: "3.5",
        iconImage:
            "https://ii1.pepperfry.com/media/catalog/product/o/r/568x625/ormond-eames-replica-iconic-chair-in-grey-colour-by-finch-fox-ormond-eames-replica-iconic-chair-in-g-12rasb.jpg",
        isFav: false,
        categories: [
          "Table",
        ]),
    Furnituredef(
        title: "wooden airchair",
        description: "Comfortable wooden chair ",
        id: "002",
        price: "Rs.800",
        ratings: "4.0",
        iconImage:
            "https://5.imimg.com/data5/MK/TC/GY/SELLER-47148041/1-max-500x500.jpg",
        isFav: false,
        categories: [
          "Chairs",
        ]),
    Furnituredef(
        title: "Royal White Chair",
        description: "Comfortable wooden chair ",
        id: "002",
        price: "Rs.1200",
        ratings: "4.5",
        iconImage:
            "http://cdn.home-designing.com/wp-content/uploads/2018/07/Small-Scandinavian-Side-Table-With-Duo-Tone-Wood-Drawers-600x600.jpg",
        isFav: false,
        categories: ["Chairs", "popular"]),
    Furnituredef(
        title: "wing chair",
        description: "Comfortable wooden chair ",
        id: "002",
        price: "Rs.1200",
        ratings: "4.8",
        iconImage:
            "https://5.imimg.com/data5/CS/BV/LF/SELLER-62331427/cs2298-500x500.jpg",
        isFav: false,
        categories: ["Chairs", "popular"]),
    Furnituredef(
        title: "wooden airchair",
        description: "Comfortable wooden chair ",
        id: "002",
        price: "Rs.800",
        ratings: "4.4",
        iconImage:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn8GfQOb00geNyl6oBg9qMKs4357R_uLVu8p_akdHu1V2My8-DdHpn0dOpO4TblUcMP6o&usqp=CAU",
        isFav: false,
        categories: [
          "Chairs",
        ]),
    Furnituredef(
        title: "wooden airchair",
        description: "Comfortable wooden chair ",
        id: "002",
        price: "Rs.800",
        ratings: "4.4",
        iconImage:
            "https://ii1.pepperfry.com/media/catalog/product/t/o/568x625/torrie-king-size-bed-with-storage-by--home-torrie-king-size-bed-with-storage-by--home-hm8eul.jpg",
        isFav: false,
        categories: ["Bed", "popular"]),
    Furnituredef(
        title: "wooden airchair",
        description: "Comfortable wooden chair ",
        id: "002",
        price: "Rs.800",
        ratings: "4.4",
        iconImage:
            "https://ii1.pepperfry.com/media/catalog/product/t/a/568x625/takeo-single-bed-in-walnut-finish-by-mintwud-takeo-single-bed-in-walnut-finish-by-mintwud-rbur23.jpg",
        isFav: false,
        categories: [
          "Bed",
        ]),
    Furnituredef(
        title: "wooden airchair",
        description: "Comfortable wooden chair ",
        id: "002",
        price: "Rs.800",
        ratings: "4.4",
        iconImage:
            "https://ii1.pepperfry.com/media/catalog/product/o/k/568x625/okinawa-king-size-bed-with-headboard-storage-in-chocolate-finish-by-mintwud-okinawa-king-size-bed-wi-epktae.jpg",
        isFav: false,
        categories: ["Bed", "popular"]),
    Furnituredef(
        title: "wooden airchair",
        description: "Comfortable wooden chair ",
        id: "002",
        price: "Rs.800",
        ratings: "4.4",
        iconImage:
            "https://www.ulcdn.net/images/products/293408/original/Miller_Two_Door_Wordrobe_LP.jpg?1584697899",
        isFav: false,
        categories: ["Bed", "popular"]),
  ];
  List<Furnituredef> get item {
    return [..._items];
  }

  Furnituredef chooseByIndex(String id) {
    var currentMeal = _items.firstWhere((element) => element.id == id);
    return currentMeal;
  }

  List<Furnituredef> getChairs() {
    List<Furnituredef> chair = [];
    for (var i = 0; i < _items.length; i++) {
      for (var j = 0; j < _items[i].categories.length; j++) {
        if (_items[i].categories[j] == 'Chairs') {
          chair.add(_items[i]);
        }
      }
    }
    return chair;
  }

  List<Furnituredef> getTable() {
    List<Furnituredef> tables = [];
    for (var i = 0; i < _items.length; i++) {
      for (var j = 0; j < _items[i].categories.length; j++) {
        if (_items[i].categories[j] == 'tables') {
          tables.add(_items[i]);
        }
      }
    }
    return tables;
  }

  List<Furnituredef> getBed() {
    List<Furnituredef> bed = [];
    for (var i = 0; i < _items.length; i++) {
      for (var j = 0; j < _items[i].categories.length; j++) {
        if (_items[i].categories[j] == 'bed') {
          bed.add(_items[i]);
        }
      }
    }
    return bed;
  }

  List<Furnituredef> getPopular() {
    List<Furnituredef> popular = [];
    for (var i = 0; i < _items.length; i++) {
      for (var j = 0; j < _items[i].categories.length; j++) {
        if (_items[i].categories[j] == 'popular') {
          popular.add(_items[i]);
        }
      }
    }
    return popular;
  }

  List<Furnituredef> getSofas() {
    List<Furnituredef> sofas = [];
    for (var i = 0; i < _items.length; i++) {
      for (var j = 0; j < _items[i].categories.length; j++) {
        if (_items[i].categories[j] == 'sofas') {
          sofas.add(_items[i]);
        }
      }
    }
    return sofas;
  }

  List<Furnituredef> getCupboard() {
    List<Furnituredef> cupboard = [];
    for (var i = 0; i < _items.length; i++) {
      for (var j = 0; j < _items[i].categories.length; j++) {
        if (_items[i].categories[j] == 'cupboard') {
          cupboard.add(_items[i]);
        }
      }
    }
    return cupboard;
  }
}
