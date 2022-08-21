import 'package:flutter/material.dart';
import 'package:myflutterapp/layers/presentation/ui/widgets/pokemon_type_badge.dart';
import 'package:myflutterapp/layers/data/datasource/remote/get_pokemon_details_remote_datasource_imp.dart';
import 'package:myflutterapp/layers/data/repositories/get_pokemon_details_repository_imp.dart';
import 'package:myflutterapp/layers/domain/entities/pokemon_details_entity.dart';
import 'package:myflutterapp/layers/domain/entities/pokemon_entity.dart';
import 'package:myflutterapp/layers/domain/usecases/get_pokemon_details/get_pokemon_details_usecase_imp.dart';
import 'package:myflutterapp/layers/presentation/controllers/pokemon_details_controller.dart';

class PokemonDetailsPage extends StatelessWidget {
  final PokemonEntity pokemon;
  late final PokemonDetailsController controller;

  PokemonDetailsPage({Key? key, required this.pokemon}) : super(key: key) {
    controller = PokemonDetailsController(
      GetPokemonDetailsUsecaseImp(
        GetPokemonDetailsRepositoryImp(
          GetPokemonDetailsRemoteDatasourceImp(pokemon.name),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        reverse: true,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            color: Colors.black54,
            padding: const EdgeInsets.all(20),
            child: FutureBuilder(
              future: controller.getPokemonDetails(),
              builder: ((context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  final pokemonDetails = snapshot.data as PokemonDetailsEntity;
                  return Column(
                    children: [
                      Row(
                        children: [
                          FloatingActionButton(
                              child: IconButton(
                                  onPressed: (() => Navigator.pop(context)),
                                  icon: const Icon(Icons.arrow_back)),
                              onPressed: (() => Navigator.pop(context))),
                        ],
                      ),
                      Text(
                        pokemonDetails.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w300),
                      ),
                      Hero(
                        tag: pokemon.name,
                        child: Image(
                          height: 200,
                          image:
                              NetworkImage(pokemonDetails.imageUrl, scale: 0.5),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: pokemonDetails.types
                              .map((e) => PokemonTypeBadge(type: e))
                              .toList()),
                    ],
                  );
                }
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Hero(
                        tag: pokemon.name,
                        child: Image(
                          width: 200,
                          height: 300,
                          image: NetworkImage(pokemon.spriteUrl, scale: 0.5),
                        ),
                      ),
                      const CircularProgressIndicator()
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
