import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

List<ChangeNotifierProvider<ChangeNotifier>> setupProviders() => [
  // Providers de uso geral
  // ChangeNotifierProvider<BancoListViewModel>(create: (_) => BancoListViewModel(bancoRepository: locator<BancoRepository>())),
];