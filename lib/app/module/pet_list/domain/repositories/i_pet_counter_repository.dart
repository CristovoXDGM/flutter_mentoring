import 'package:mentoring_app_totvs/app/module/pet_list/domain/result/pet_counter_result.dart';

abstract class IPetCounterReposity {
  Future<PetCounterResult> countPetWithName();
}
