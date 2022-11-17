import 'package:flutter_test/flutter_test.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/external/datasource/pet_counter_datasource.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/infra/datasources/i_pet_counter_datasource.dart';

void main() {
  late final IPetCounterDataSource counter;

  setUpAll(() {
    counter = PetCounterDataSource();
  });

  test(' Should return a value from counter', () async {
    final result = await counter.countPetWithName();

    expect(result, isA<int>());
    expect(result, 1);
  });
}
