import 'package:mentoring_app_totvs/app/module/pet_list/domain/repositories/i_pet_counter_repository.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/domain/result/pet_counter_result.dart';

abstract class IPetCounterUseCase {
  Future<PetCounterResult> countPetWithName();
}

class PetCounterUseCase implements IPetCounterUseCase {
  final IPetCounterReposity _repository;

  PetCounterUseCase(this._repository);

  @override
  Future<PetCounterResult> countPetWithName() async {
    final result = await _repository.countPetWithName();

    return result;
  }
}
