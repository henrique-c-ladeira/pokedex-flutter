import 'package:dio/dio.dart';
import 'package:myflutterapp/constants/contants.dart';
import 'package:myflutterapp/layers/data/datasource/get_pokemon_list_datasource.dart';
import 'package:myflutterapp/layers/data/dtos/pokemon_dto.dart';
import 'package:myflutterapp/layers/domain/entities/pokemon_entity.dart';

class GetPokemonListRemoteDatasourceImp implements GetPokemonListDatasource {
  final pokemonListUrl = '$baseUrl/pokemon?limit=150';

  @override
  Future<List<PokemonEntity>> call() async {
    final response = await Dio().get(pokemonListUrl);
    final pokemonList = response.data['results'] as List<dynamic>;
    return pokemonList.map((e) => PokemonDto.fromJson(e)).toList();
  }
}
