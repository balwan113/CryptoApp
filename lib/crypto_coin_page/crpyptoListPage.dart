import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:mypetproject/bloc/bloc_main.dart';
import 'package:mypetproject/bloc/cubit/crypto_cubit.dart';
import 'package:mypetproject/crypto_coin_page/details_pages.dart';
import 'package:mypetproject/repositories/abstractCoins.dart';

class CryptoListPage extends StatelessWidget {
  const CryptoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          CryptoMainBloc(coinRepos: GetIt.I<Abstractcoins>())
            ..add(LoadCryptoList()),
      child: Scaffold(
        appBar: AppBar(title: const Text("Crypto List")),
        body: BlocBuilder<CryptoMainBloc, CryptoMainState>(
          builder: (context, state) {
            if (state is CryptoLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is CryptoListLoaded) {
              return ListView.separated(
                itemCount: state.cryptoList.length,
                itemBuilder: (context, index) {
                  final coin = state.cryptoList[index];
                  return ListTile(
                    leading: Image.network(coin.image),
                    title: Text(coin.name),
                    subtitle:
                        Text("\$${coin.priceInUsd.toStringAsFixed(2)}"),
                    onTap: () {
                    Navigator.push(
                 context, 
                 MaterialPageRoute(builder: (context)=> BlocProvider(create: (context) => CryptoCubit(coin),
                 child: DetailsPage(),
                 )
)
                    );

                    },
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.grey.shade300,
                    thickness: 1,
                    height: 1,
                  );
                },
              );
            } else if (state is CryptoLoadError) {
              return Center(child: Text("Error: ${state.message}"));
            }
            return  FloatingActionButton(onPressed: (){
                BlocProvider.of<CryptoMainBloc>(context).add(LoadCryptoList());
                
            },
            child: const Icon(Icons.settings_input_component_sharp),);
            
          },
        ),
      ),
    );
  }
}
