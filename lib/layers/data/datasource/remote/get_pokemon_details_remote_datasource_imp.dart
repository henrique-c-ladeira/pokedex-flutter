import 'package:dio/dio.dart';
import 'package:myflutterapp/constants/contants.dart';
import 'package:myflutterapp/layers/data/datasource/get_pokemon_details_datasource.dart';
import 'package:myflutterapp/layers/data/dtos/pokemon_details_dto.dart';
import 'package:myflutterapp/layers/domain/entities/pokemon_details_entity.dart';

class GetPokemonDetailsRemoteDatasourceImp
    implements GetPokemonDetailsDatasource {
  final String pokemonName;
  late String pokemonDetailsUrl;

  GetPokemonDetailsRemoteDatasourceImp(this.pokemonName) {
    pokemonDetailsUrl = '$baseUrl/pokemon/$pokemonName';
  }

  @override
  Future<PokemonDetailsEntity> call() async {
    final response = await Dio().get(pokemonDetailsUrl);
    final pokemonDetails = response.data;
    return PokemonDetailsDto.fromJson(pokemonDetails).toEntity();
  }
}
