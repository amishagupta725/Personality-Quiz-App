import 'package:get_it/get_it.dart';
import 'package:telemed/widgets/services/nva_service.dart';


GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}