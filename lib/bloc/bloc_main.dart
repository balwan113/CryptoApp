import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mypetproject/repositories/abstractCoins.dart';
import 'package:mypetproject/repositories/models/CryptoCoin.dart';

part 'bloc_state_main.dart';
part 'bloc_event_main.dart';
class CryptoMainBloc extends Bloc<CryptoMainEvent, CryptoMainState> {
  final Abstractcoins coinRepos;

  CryptoMainBloc({required this.coinRepos}) : super(CryptoMainInitial()) {
   on<LoadCryptoList>((event, emit) async {
  emit(CryptoLoading());
  try {
    final cryptoList = await coinRepos.getCoinsList();
    emit(CryptoListLoaded(cryptoList: cryptoList));
  } catch (e) {
    emit(CryptoLoadError(message: e.toString()));
  }
});


on<CryptoCoinShower>((event,emit) async{
if(event is CryptoListLoaded){
  final coin = await coinRepos.getCoinsList();
  emit(CryptoDetailsBloc(coin: coin));
}
});
  }
}
