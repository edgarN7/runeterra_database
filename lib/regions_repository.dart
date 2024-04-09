import '../region.dart';
import 'bilgewater/bilgewater_characters_repository.dart';
import 'bilgewater/bilgewater_places_repository.dart';

class RegionRepository {
  static List<Region> regionsTable = [
    Region(1, "Águas de Sentina", "aguas_de_sentina", BilgewaterCharactersRepository.bilgewaterCharactersTable, BilgewaterPlacesRepository.bilgewaterPlacesTable),
  ];
}