import 'package:myflutterapp/layers/domain/entities/pokemon_details_entity.dart';
import 'package:myflutterapp/layers/domain/repositories/get_pokemon_details_repoitory.dart';
import 'package:myflutterapp/layers/domain/usecases/get_pokemon_details/get_pokemon_details_usecase.dart';

class GetPokemonDetailsUsecaseImp implements GetPokemonDetailsUsecase {
  final GetPokemonDetailsRepository _getPokemonDetailsRepository;

  GetPokemonDetailsUsecaseImp(this._getPokemonDetailsRepository);

  @override
  Future<PokemonDetailsEntity> call() async {
    return await _getPokemonDetailsRepository();
  }
}
