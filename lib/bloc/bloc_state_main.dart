part of 'bloc_main.dart';

// Базовое состояние
abstract class CryptoMainState {}

// начальное состояние
class CryptoMainInitial extends CryptoMainState {}

// cостояние загрузки
class CryptoLoading extends CryptoMainState {}

// cостояние  загрузки законченной
class CryptoListLoaded extends CryptoMainState {
  final List<Cryptocoin> cryptoList;

  CryptoListLoaded({required this.cryptoList});
}

// состояние ошибки
class CryptoLoadError extends CryptoMainState {
  final String message;

  CryptoLoadError({required this.message});
}

class CryptoDetailsBloc extends CryptoMainState{
    CryptoDetailsBloc({required this.coin});
  final List<Cryptocoin> coin;

}