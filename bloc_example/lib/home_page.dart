import 'package:bloc_example/dragon_bloc.dart';
import 'package:bloc_example/repositories/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uno/uno.dart';

import 'models/dragon.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final UnoRepository _unoRepository;
  late final DragonBloc _dragonBloc;

  @override
  void initState() {
    _unoRepository = UnoRepository(Uno(baseURL: 'http://5c4b2a47aa8ee500142b4887.mockapi.io/api/v1'));
    _dragonBloc = DragonBloc(_unoRepository);
    _dragonBloc.add(LoadDragons());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: BlocBuilder<DragonBloc, List<DragonModel>?>(
          bloc: _dragonBloc,
          builder: (context, state) {
            if (state == null) {
              return const Center(child: CircularProgressIndicator());
            }

            return ListView.separated(
              itemCount: state.length,
              shrinkWrap: true,
              separatorBuilder: (_, __) => const SizedBox(height: 8),
              itemBuilder: (context, index) {
                final dragon = state[index];

                return ListTile(
                  title: Text(dragon.name),
                  subtitle: Text(dragon.type),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
