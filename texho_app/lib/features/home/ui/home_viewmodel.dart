import 'package:flutter/material.dart';
import 'package:texho_commons/result.dart';
import 'package:texho_commons/texho_log.dart';

import '../../../config/command.dart';
import '../../../data/model/cep_model.dart';
import '../use_case/home_usecase.dart';

class HomeViewmodel extends ChangeNotifier {
  HomeViewmodel({required HomeUseCase homeUseCase}) : _homeUseCase = homeUseCase {
    TexhoLog.print(super.runtimeType);
  }

  final HomeUseCase _homeUseCase;

  late final Command0 userCanResetPasswordCommand = Command0(_get);

  Future<Result<CepModel>> _get() async {
    notifyListeners();
    final useCaseResult = await _homeUseCase.get();

    switch (useCaseResult) {
      case Ok<CepModel>():
      // _validarSeUsuarioPodeReiniciarSenhaModel = useCaseResult.value;

      case Error<CepModel>():
        TexhoLog.print(useCaseResult.error, name: 'Texho', title: 'Erro');
    }

    notifyListeners();

    return useCaseResult;
  }
}
