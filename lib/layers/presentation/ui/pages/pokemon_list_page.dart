import 'package:flutter/material.dart';
import 'package:myflutterapp/layers/presentation/ui/widgets/search_app_bar.dart';
import 'package:myflutterapp/layers/data/datasource/remote/get_pokemon_list_remote_datasource_imp.dart';
import 'package:myflutterapp/layers/data/repositories/get_pokemon_list_repository_imp.dart';
import 'package:myflutterapp/layers/domain/entities/pokemon_entity.dart';
import 'package:myflutterapp/layers/domain/usecases/get_pokemon_list/get_pokemon_list_usecases_imp.dart';
import 'package:myflutterapp/layers/presentation/controllers/pokemon_list_controller.dart';
import 'package:myflutterapp/layers/presentation/ui/pages/pokemon_details_page.dart';
import 'package:myflutterapp/layers/presentation/ui/widgets/pokemon_list_tile.dart';

class PokemonListPage extends StatelessWidget {
  final PokemonListController controller = PokemonListController(
    GetPokemonListUsecaseImp(
      GetPokemonListRepositoryImp(
        GetPokemonListRemoteDatasourceImp(),
      ),
    ),
  );

  PokemonListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            delegate: SearchAppBar(),
            pinned: true,
          ),
          FutureBuilder(
            future: controller.getPokemonList(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                final List<PokemonEntity> pokemonList =
                    snapshot.data as List<PokemonEntity>;

                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => PokemonTile(
                      title: pokemonList[index].name,
                      number: pokemonList[index].number,
                      imageUrl: pokemonList[index].spriteUrl,
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            opaque: false,
                            transitionDuration: const Duration(seconds: 1),
                            pageBuilder: (_, __, ___) =>
                                PokemonDetailsPage(pokemon: pokemonList[index]),
                          ),
                        );
                      },
                    ),
                    childCount: pokemonList.length,
                  ),
                );
              }
              return const SliverFillRemaining(
                  child: Center(child: CircularProgressIndicator()));
            },
          ),
        ],
      ),
    );
  }
}
