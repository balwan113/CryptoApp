import 'package:flutter/material.dart';
import 'package:mypetproject/crypto_coin_page/details_pages.dart';
import 'package:mypetproject/main.dart';

class GetRoutes{
  static Map<String,WidgetBuilder> getRoutes(){
     return {
      '/': (context) => const CryptoMainApp(), // Главная страница
      '/details': (context) => const  DetailsPage(), // Детальная страница
    };
  }
}