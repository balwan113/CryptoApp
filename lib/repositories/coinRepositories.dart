import 'package:dio/dio.dart';
import 'package:mypetproject/repositories/abstractCoins.dart';
import 'package:mypetproject/repositories/models/CryptoCoin.dart';

class CoinsRep implements Abstractcoins {
  CoinsRep({required this.dio});
  final Dio dio;

  @override
  Future<List<Cryptocoin>> getCoinsList() async {
    final response = await dio.get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,AID&tsyms=USD',
    );

    // Извлекаем данные из ответа
    final data = response.data as Map<String, dynamic>;
    final rawData = data['RAW'] as Map<String, dynamic>;

    // Формируем список Cryptocoin
    final coinsList = rawData.entries.map((entry) {
      final coinName = entry.key; // Например: BTC, ETH
      final coinData = entry.value['USD'] as Map<String, dynamic>;
      final price = (coinData['PRICE'] as num).toDouble();
      final lowPrice = (coinData['LOW24HOUR' ] as num).toDouble();
      final priceMaxIn24 = (coinData['HIGH24HOUR'] as num ).toDouble();
      final image = "https://cryptocompare.com${coinData['IMAGEURL']}";
      return Cryptocoin(name: coinName, priceInUsd: price, image: image, highPrice: priceMaxIn24, lowPrice: lowPrice);
    }).toList();

    return coinsList;
  }
  
  
  
}
