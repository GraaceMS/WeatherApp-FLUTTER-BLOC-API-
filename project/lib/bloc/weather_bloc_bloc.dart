import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {
  // Substitua sua chave de API aqui
  final String apiKey = '00ab6e2f2a1b436b122c453d688b4d34';

  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherBlocLoading());

      // Adiciona um print para verificar se o evento foi recebido
      print('FetchWeather event received');

      try {
        WeatherFactory wf = WeatherFactory(apiKey, language: Language.ENGLISH);

        // Use a posição passada no evento para buscar o clima
        Position position = event.position;

        // Adiciona prints para verificar a posição atual
        print(
            'Position received: Lat ${position.latitude}, Lon ${position.longitude}');

        Weather weather = await wf.currentWeatherByLocation(
            position.latitude, position.longitude);

        // Adiciona print para verificar os dados de clima recebidos
        print('Weather data received: $weather');

        // Emite o sucesso com os dados de clima
        emit(WeatherBlocSuccess(weather));
      } catch (e) {
        // Em caso de erro, imprime a mensagem de erro no console e emite o estado de falha
        print('Error fetching weather: $e');
        emit(WeatherBlocFailure(e.toString()));
      }
    });
  }
}
