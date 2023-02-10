import 'package:cubit_example/dragon_store.dart';
import 'package:cubit_example/repositories/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uno/uno.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final UnoRepository _unoRepository;
  late final DragonStore _dragonStore;

  @override
  void initState() {
    _unoRepository = UnoRepository(Uno(baseURL: 'http://5c4b2a47aa8ee500142b4887.mockapi.io/api/v1'));
    _dragonStore = DragonStore(_unoRepository);
    _dragonStore.loadDragons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Container(
        padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
        child: BlocBuilder<DragonStore, DragonBaseState>(
          bloc: _dragonStore,
          builder: (context, state) {
            if (state is DragonLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is DragonErrorState) {
              return const Center(child: Text('Erro ao carregar dragões'));
            }

            if (state is DragonSuccessState) {
              return ListView.separated(
                itemCount: state.dragons.length,
                shrinkWrap: true,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final dragon = state.dragons[index];

                  return ListTile(
                    title: Text(dragon.name),
                    subtitle: Text(dragon.type),
                  );
                },
              );
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
