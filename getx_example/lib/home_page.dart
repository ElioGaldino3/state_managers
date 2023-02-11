import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/dragon_store.dart';
import 'package:getx_example/repositories/repository.dart';
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
        child: Obx(
          () {
            if (_dragonStore.isLoading.value) {
              return const Center(child: CircularProgressIndicator());
            }

            if (_dragonStore.hasError.value) {
              return const Center(child: Text('Erro ao carregar dragões'));
            }

            if (_dragonStore.dragons.isNotEmpty) {
              return ListView.separated(
                itemCount: _dragonStore.dragons.length,
                shrinkWrap: true,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, index) {
                  final dragon = _dragonStore.dragons[index];

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
