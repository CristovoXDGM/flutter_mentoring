import 'package:flutter_test/flutter_test.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/domain/repositories/i_pet_counter_repository.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/domain/result/pet_counter_result.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/domain/usecases/pet_counter_usecase.dart';
import 'package:mocktail/mocktail.dart';

class MockPetCOunterRepository extends Mock implements IPetCounterReposity {}

void main() {
  late final IPetCounterUseCase useCase;
  late final IPetCounterReposity repository;

  setUpAll(() {
    repository = MockPetCOunterRepository();
    useCase = PetCounterUseCase(repository);
  });

  group('[PetCounterUseCase] Test', () {
    test(' Should return a value from counter', () async {
      when(() => repository.countPetWithName())
          .thenAnswer((invocation) async => PetCounterResponse(1));

      final result = await useCase.countPetWithName();

      expect(result, isA<PetCounterResponse>());
      expect((result as PetCounterResponse).counter, 1);
    });

    test('Should return a value from counter', () async {
      when(() => repository.countPetWithName())
          .thenAnswer((invocation) async => PetCounterFailureResult());

      final result = await useCase.countPetWithName();

      expect(result, isA<PetCounterFailureResult>());
    });
  });
}
