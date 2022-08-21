import 'package:myflutterapp/layers/domain/entities/pokemon_entity.dart';
import 'package:myflutterapp/layers/domain/repositories/get_pokemon_list_repository.dart';
import 'package:myflutterapp/layers/domain/usecases/get_pokemon_list/get_pokemon_list_usecase.dart';

class GetPokemonListUsecaseImp implements GetPokemonListUsecase {
  final GetPokemonListRepository _getPokemonListRepositoryImp;

  GetPokemonListUsecaseImp(this._getPokemonListRepositoryImp);

  @override
  Future<List<PokemonEntity>> call() async {
    return await _getPokemonListRepositoryImp();
  }
}
