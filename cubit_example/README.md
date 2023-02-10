# Projeto Flutter: Demonstração de utilização do gerenciamento de estado utilizando a lib "Cubit"

O Cubit é uma estrutura de design para gerenciar o estado na aplicação Flutter. É similar ao Bloc, mas tem algumas diferenças conceituais.

Enquanto o Bloc é baseado em eventos e estados, o Cubit é baseado em uma abordagem de fluxo de dados unidirecional, o que significa que o estado é transmitido em uma direção única, do pai para o filho. Além disso, o Cubit não precisa ser gerenciado por um provedor, pois pode ser passado diretamente para os widgets filhos como um argumento.

A classe Cubit define o comportamento geral do gerenciamento de estado e é implementada por uma classe concreta que contém a lógica de negócios específica. A classe concreta do Cubit fornece métodos para atualizar o estado e acessar o estado atual.

Além disso, o Cubit fornece uma forma de rastrear mudanças de estado e notificar a interface de usuário sobre elas, o que é útil quando o estado da aplicação é alterado por eventos de entrada.

Em resumo, o Cubit é uma estrutura de design no Flutter que permite gerenciar o estado na aplicação com uma abordagem de fluxo de dados unidirecional, sem precisar ser gerenciado por um provedor. É uma alternativa ao Bloc que oferece uma abordagem mais simples e direta para o gerenciamento de estado.

## Requisitos

Para executar este projeto, é necessário ter o seguinte software instalado:

 - [Flutter](https://flutter.dev/docs/get-started/install)

## Como executar

1. Clone este repositório usando o seguinte comando:
```git clone https://github.com/ElioGaldino3/state_managers.git```
2. Entre na pasta do projeto
```cd state_managers/bloc_example```
3. Baixe as bibliotecas necessárias
```flutter pub get```
4. Conecte um dispositivo móvel ou execute um emulador.
5. Execute o comando ```flutter run``` no terminal.

## Resultado

Ao executar o projeto, será exibida uma tela inicial com uma lista de dragões, vinda de uma API pública.

## Conclusão

Este projeto demonstra minha capacidade de trabalhar com o Cubit. Espero que ele seja útil para avaliar minhas habilidades como desenvolvedor de aplicativos móveis.