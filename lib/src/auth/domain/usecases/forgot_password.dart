

import '../../../../core/usecases/usecases.dart';
import '../../../../core/utils/typdefs.dart';
import '../repos/auth_repo.dart';

class ForgotPassword extends UsecaseWithParams<void, String> {
  const ForgotPassword(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<void> call(String params) => _repo.forgotPassword(params);
}
