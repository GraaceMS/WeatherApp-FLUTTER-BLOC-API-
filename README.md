# project

A new Flutter project.

## Getting Started

- Esse é um aplicativo Flutter que fornece informações meteorológicas em tempo real com base na localização atual do usuário, utilizando a API do OpenWeatherMap e o pacote Geolocator para obter a posição geográfica.

## Funcionalidades
- O aplicativo captura a localização atual do usuário utilizando o Geolocator.
- Após obter as coordenadas de latitude e longitude, o aplicativo utiliza a API do OpenWeatherMap para buscar as informações climáticas.
- Exibe dados como temperatura, condições meteorológicas, hora do nascer e do pôr do sol.
- A interface é gerida usando Flutter Bloc, garantindo um fluxo de dados reativo e uma experiência de usuário fluida.

## Fluxo do App
- Quando o aplicativo é iniciado, ele solicita permissão para acessar a localização do dispositivo.
- Uma vez que a permissão é concedida, a localização é obtida e usada para fazer uma requisição à API do OpenWeatherMap.
- Enquanto os dados são carregados, um indicador de progresso circular é exibido.
- Quando os dados climáticos são recebidos com sucesso, o aplicativo exibe informações detalhadas, como a temperatura atual e a previsão de condições meteorológicas.
- Caso haja algum erro, como problemas ao obter a localização ou falhas na requisição à API, uma mensagem de erro é exibida.

## Tecnologias Utilizadas
Flutter: Framework principal do aplicativo.
Flutter Bloc: Gerenciamento de estado usando o padrão Bloc.
Geolocator: Para obter a localização geográfica do usuário.
OpenWeatherMap API: Para recuperar informações climáticas com base na localização.
Dart: Linguagem de programação usada no Flutter.

## Imagens
- <img width="429" alt="image" src="https://github.com/user-attachments/assets/0d5c0691-d111-4f78-ade9-6495fb68fd64">
- <img width="858" alt="image" src="https://github.com/user-attachments/assets/bb9ca37e-5c3a-4caa-b032-07f7c4ffda06">

