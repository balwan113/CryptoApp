import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mypetproject/bloc/cubit/crypto_cubit.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final coin = context.watch<CryptoCubit>().state; // Получаем coin из Cubit

    return Scaffold(
      appBar: AppBar(title: const Text("Crypto Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.network(coin.image),
            Text("Name: ${coin.name}",style: const TextStyle(fontSize: 19),),
            Text("Price: \$${coin.priceInUsd.toStringAsFixed(2)}" ,style:  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(' High Price in a last 24h \$${coin.highPrice.toStringAsFixed(2)}' ,style:  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text('Low Price last 24h \$${coin.lowPrice.toStringAsFixed(2)}'  ,style:  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }
}
