import 'package:flutter_test/flutter_test.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/domain/erros/erros.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/domain/repositories/i_pet_counter_repository.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/domain/result/pet_counter_result.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/infra/datasources/i_pet_counter_datasource.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/infra/repositories/pet_counter_repository.dart';
import 'package:mocktail/mocktail.dart';

class MockDatasSource extends Mock implements IPetCounterDataSource {}

void main() {
  late final IPetCounterDataSource dataSource;
  late final IPetCounterReposity repository;

  setUpAll(() {
    dataSource = MockDatasSource();
    repository = PetCounterRepository(dataSource);
  });

  group('[PetCounterRepository] Test', () {
    test(' Should return a value from counter', () async {
      when(() => dataSource.countPetWithName()).thenAnswer((invocation) async => 1);

      final result = await repository.countPetWithName();

      expect(result, isA<PetCounterResponse>());
      expect((result as PetCounterResponse).counter, 1);
    });

    test('Should return an  PetCounterDataSourceError', () async {
      when(() => dataSource.countPetWithName())
          .thenThrow((invocation) async => PetCounterDataSourceError());

      final result = await repository.countPetWithName();

      expect(result, isA<PetCounterFailureResult>());
    });
    test('Should return an PetCountUnavailable', () async {
      when(() => dataSource.countPetWithName())
          .thenThrow((invocation) async => PetCountUnavailable());

      final result = await repository.countPetWithName();

      expect(result, isA<PetCounterFailureResult>());
    });
  });
}
