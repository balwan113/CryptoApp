part of 'bloc_main.dart';

// Базовое событие
abstract class CryptoMainEvent {}

// Событие загрузки списка криптовалют
class LoadCryptoList extends CryptoMainEvent {}


class CryptoCoinShower extends CryptoMainEvent{
   CryptoCoinShower({required this.coin});
  final Cryptocoin coin;
}