# Projeto Flutter: Demonstração de utilização do gerenciamento de estado utilizando a lib "mobx"

MobX é uma biblioteca de gerenciamento de estado para aplicações Flutter que se concentra em tornar o gerenciamento de estado simples e fácil de entender. É baseado em observação de propriedade, o que significa que você pode "observar" determinadas propriedades e reagir a mudanças nessas propriedades.

No MobX, as classes que representam o estado da aplicação são chamadas de "stores". As stores são classes simples que contêm propriedades e métodos que representam o estado da aplicação. Quando você atualiza uma propriedade em uma store, todas as widgets que observam essa propriedade são automaticamente atualizadas.

Além disso, o MobX suporta ações, que são métodos que modificam o estado da store. As ações são geralmente chamadas por interações com a interface de usuário, como cliques em botões.

O MobX também fornece uma forma fácil de lidar com as dependências entre diferentes propriedades. Isso permite que você defina regras claras para atualizar o estado da aplicação quando uma propriedade dependente é alterada.

Em resumo, o MobX é uma biblioteca de gerenciamento de estado para aplicações Flutter que se concentra em tornar o gerenciamento de estado simples e fácil de entender, com uma abordagem baseada em observação de propriedade. É uma alternativa popular ao Bloc e ao Cubit que oferece uma forma fácil de lidar com o gerenciamento de estado em aplicações Flutter.

## Requisitos

Para executar este projeto, é necessário ter o seguinte software instalado:

 - [Flutter](https://flutter.dev/docs/get-started/install)

## Como executar

1. Clone este repositório usando o seguinte comando:
```git clone https://github.com/ElioGaldino3/state_managers.git```
2. Entre na pasta do projeto
```cd state_managers/mobx_example```
3. Baixe as bibliotecas necessárias
```flutter pub get```
4. Conecte um dispositivo móvel ou execute um emulador.
5. Execute o comando ```flutter run``` no terminal.

## Resultado

Ao executar o projeto, será exibida uma tela inicial com uma lista de dragões, vinda de uma API pública.

## Conclusão

Este projeto demonstra minha capacidade de trabalhar com o Mobx. Espero que ele seja útil para avaliar minhas habilidades como desenvolvedor de aplicativos móveis.