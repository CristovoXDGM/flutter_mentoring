import 'package:mentoring_app_totvs/app/module/pet_list/domain/erros/erros.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/domain/repositories/i_pet_counter_repository.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/domain/result/pet_counter_result.dart';
import 'package:mentoring_app_totvs/app/module/pet_list/infra/datasources/i_pet_counter_datasource.dart';

class PetCounterRepository implements IPetCounterReposity {
  final IPetCounterDataSource _datasource;

  PetCounterRepository(this._datasource);

  @override
  Future<PetCounterResult> countPetWithName() async {
    try {
      final result = await _datasource.countPetWithName();

      return PetCounterResponse(result);
    } on PetCounterDataSourceError catch (error) {
      return PetCounterFailureResult(message: 'PetCounterDataSourceError: $error');
    } catch (error, stacktrace) {
      return PetCounterFailureResult(message: 'Error: $error\n Stack: $stacktrace');
    }
  }
}
