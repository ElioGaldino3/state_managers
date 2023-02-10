# Projeto Flutter: Demonstração de utilização do gerenciamento de estado "Change Notifier"

Este projeto foi desenvolvido com o objetivo de demonstrar minhas habilidades em trabalhar com o gerenciamento de estado nativo "Change Notifier" no Flutter. O ChangeNotifier é uma ferramenta fornecida pelo Flutter que permite que você implemente a lógica de negócios e gerencie o estado de seus aplicativos. É uma classe abstrata que permite que você crie suas próprias classes de notificação de mudanças personalizadas.

A ideia básica é que você crie uma classe que herde de ChangeNotifier e implemente seus próprios atributos, métodos e comportamentos. Sempre que o estado de sua classe mudar, você pode chamar o método notifyListeners para notificar todos os widgets que estão ouvindo as mudanças naquela classe.

A vantagem de usar o ChangeNotifier é que ele facilita o gerenciamento do estado em seus aplicativos, já que permite que você centralize a lógica de negócios em uma única classe e mantenha a comunicação entre seus widgets organizada. Além disso, ele oferece uma solução fácil e escalável para compartilhar informações entre widgets, sem a necessidade de passar dados através de várias camadas de widgets.

## Requisitos

Para executar este projeto, é necessário ter o seguinte software instalado:

 - [Flutter](https://flutter.dev/docs/get-started/install)

## Como executar

1. Clone este repositório usando o seguinte comando:
```git clone https://github.com/ElioGaldino3/state_managers.git```
2. Entre na pasta do projeto
```cd state_managers/changenotifier_example```
3. Baixe as bibliotecas necessárias
```flutter pub get```
4. Conecte um dispositivo móvel ou execute um emulador.
5. Execute o comando ```flutter run``` no terminal.

## Resultado

Ao executar o projeto, será exibida uma tela inicial com uma lista de dragões, vinda de uma API pública.

## Conclusão

Este projeto demonstra minha capacidade de trabalhar com o Change Notifier. Espero que ele seja útil para avaliar minhas habilidades como desenvolvedor de aplicativos móveis.