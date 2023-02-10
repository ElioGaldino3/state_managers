# Projeto Flutter: Demonstração de utilização do gerenciamento de estado "Value Notifier"

O ValueNotifier é um tipo de objeto de notificação de mudanças de valor no Flutter. É uma classe que fornece uma maneira fácil de notificar outros widgets ou componentes sobre mudanças em um valor. É uma alternativa mais simples ao ChangeNotifier e pode ser usada em situações onde você deseja rastrear um único valor, como o estado de um switch ou a seleção de uma lista.

O ValueNotifier é fácil de usar. Basta instanciá-lo com o valor inicial e, em seguida, você pode obter o valor atual a qualquer momento usando o método value e atualizá-lo usando o método value=. Quando o valor é atualizado, o ValueNotifier notifica todos os seus ouvintes, permitindo que eles atualizem sua interface de usuário automaticamente.

Ao contrário do ChangeNotifier, o ValueNotifier não possui um método addListener ou removeListener, pois ele é projetado para ser usado com o ListenableBuilder, que fornece uma forma simples de escutar mudanças de valor sem precisar gerenciar manualmente as inscrições.

Em resumo, o ValueNotifier é uma ferramenta útil no Flutter para notificar mudanças em um valor. É uma alternativa mais simples ao ChangeNotifier e permite que você rastreie facilmente mudanças em um único valor em sua aplicação.

## Requisitos

Para executar este projeto, é necessário ter o seguinte software instalado:

 - [Flutter](https://flutter.dev/docs/get-started/install)

## Como executar

1. Clone este repositório usando o seguinte comando:
```git clone https://github.com/ElioGaldino3/state_managers.git```
2. Entre na pasta do projeto
```cd state_managers/valuenotifier_example```
3. Baixe as bibliotecas necessárias
```flutter pub get```
4. Conecte um dispositivo móvel ou execute um emulador.
5. Execute o comando ```flutter run``` no terminal.

## Resultado

Ao executar o projeto, será exibida uma tela inicial com uma lista de dragões, vinda de uma API pública.

## Conclusão

Este projeto demonstra minha capacidade de trabalhar com o Value Notifier. Espero que ele seja útil para avaliar minhas habilidades como desenvolvedor de aplicativos móveis.