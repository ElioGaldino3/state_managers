# Projeto Flutter: Demonstração de utilização do gerenciamento de estado utilizando a lib "Bloc"

O Bloc (Business Logic Component) é uma estrutura de design que permite separar a lógica de negócios de sua aplicação Flutter de sua interface de usuário. É amplamente utilizado para aplicativos mais complexos, pois ajuda a garantir a escalabilidade, a manutenibilidade e a testabilidade da aplicação.

A ideia por trás do Bloc é que a interface de usuário apenas responde aos eventos de entrada e apresenta a saída sem se preocupar com a lógica de negócios subjacente. A lógica de negócios é mantida no Bloc, que responde aos eventos de entrada, processa-os e fornece a saída.

O Bloc é normalmente implementado como uma classe abstrata que define o comportamento geral da lógica de negócios e é implementada por uma classe concreta que contém a lógica de negócios específica. A classe concreta do Bloc é geralmente gerenciada pelo BlocProvider e pode ser acessada por qualquer widget filho que precise da lógica de negócios.

O Bloc também fornece uma forma fácil de rastrear mudanças de estado e notificar a interface de usuário sobre elas, o que é útil quando o estado da aplicação é alterado por eventos de entrada.

Em resumo, o Bloc é uma estrutura de design popular no Flutter que permite separar a lógica de negócios de sua aplicação da interface de usuário, ajudando a garantir a escalabilidade, a manutenibilidade e a testabilidade da aplicação.

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

Este projeto demonstra minha capacidade de trabalhar com o Bloc. Espero que ele seja útil para avaliar minhas habilidades como desenvolvedor de aplicativos móveis.