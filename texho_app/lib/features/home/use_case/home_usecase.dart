import 'package:texho_commons/texho_commons.dart';

import '../../../data/model/cep_model.dart';
import '../repository/home_repository.dart';

class HomeUseCase {
  HomeUseCase({required this._homeRepository}) {
    TexhoLog.print(super.runtimeType);
  }

  final HomeRepository _homeRepository;

  Future<Result<CepModel>> get() async {
    final serviceResult = await _homeRepository.get();
    switch (serviceResult) {
      case Ok<CepModel>():
        return Result.ok(serviceResult.value);
      case Error<CepModel>():
        return Result.error(serviceResult.error);
    }
  }
}
