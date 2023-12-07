import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/typdefs.dart';
import '../repos/on_boarding_repo.dart';

class CacheFirstTimer extends UsecaseWithoutParams<void> {
  const CacheFirstTimer(this._repo);

  final OnBoardingRepo _repo;

  @override
  ResultFuture<void> call() async => _repo.cacheFirstTimer();
}
