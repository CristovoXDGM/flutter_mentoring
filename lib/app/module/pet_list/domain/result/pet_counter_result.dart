// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class PetCounterResult {}

class PetCounterResponse extends PetCounterResult {
  final int counter;
  PetCounterResponse(this.counter);
}

class PetCounterFailureResult extends PetCounterResult {
  final String message;

  PetCounterFailureResult({this.message = ''});
}
