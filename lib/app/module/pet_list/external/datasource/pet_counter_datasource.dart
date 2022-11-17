import 'package:mentoring_app_totvs/app/module/pet_list/infra/datasources/i_pet_counter_datasource.dart';

class PetCounterDataSource implements IPetCounterDataSource {
  PetCounterDataSource();

  @override
  Future<int> countPetWithName() async {
    int count = 0;

    count++;

    await Future.delayed(const Duration(seconds: 2));

    return count;
  }
}
