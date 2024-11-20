import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mypetproject/bloc/bloc_main.dart';
import 'package:mypetproject/crypto_coin_page/crpyptoListPage.dart';
import 'package:mypetproject/crypto_coin_page/details_pages.dart';
import 'package:mypetproject/firebase_options.dart';
import 'package:mypetproject/repositories/abstractCoins.dart';
import 'package:mypetproject/repositories/coinRepositories.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 
  GetIt.I.registerLazySingleton<Abstractcoins>(() => CoinsRep(dio: Dio()));
  runApp(const CryptoMainApp());



  final app  = await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
    );
    print(app.options.projectId);
}

class CryptoMainApp extends StatelessWidget {
  const CryptoMainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CryptoMainBloc(coinRepos: GetIt.I<Abstractcoins>())..add(LoadCryptoList()),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 43, 41, 41),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black,
          ),
        ),
         initialRoute: '/',
        routes: {
          '/': (context) => const CryptoListPage(),
          '/details': (context) => const  DetailsPage(),
        },
      ),
    );
  }
}
