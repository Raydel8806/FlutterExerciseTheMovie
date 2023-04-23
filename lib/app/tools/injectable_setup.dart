import 'package:get_it/get_it.dart';

import '../data/data_dependencies.dart';
import '../domain/domain_dependencies.dart';
import '../presentation/presentation_dependencies.dart';

final getIt = GetIt.instance;

void configureInjection() {
  DataDependencies.register(getIt);
  DomainDependencies.register(getIt);
  PresentationDependencies.register(getIt);
}
