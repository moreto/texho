import 'package:flutter/material.dart';
import 'package:texho_app/features/home/ui/home_viewmodel.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, required this.viewModel});

  final HomeViewmodel viewModel ;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Text('Teste...'),);
  }
}
