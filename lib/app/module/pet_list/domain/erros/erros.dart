abstract class PetErrors implements Exception {}

class PetCountUnavailable implements PetErrors {}

class PetCounterDataSourceError implements PetErrors {}

class PetNameUnavailable implements PetErrors {}
