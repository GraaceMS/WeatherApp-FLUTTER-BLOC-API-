import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';

part 'weather_bloc_event.dart';
part 'weather_bloc_state.dart';

class WeatherBlocBloc extends Bloc<WeatherBlocEvent, WeatherBlocState> {

  final String apiKey = 'SUA_CHAVE_API';

  WeatherBlocBloc() : super(WeatherBlocInitial()) {
    on<FetchWeather>((event, emit) async {
      emit(WeatherBlocLoading());


      print('FetchWeather event received');

      try {
        WeatherFactory wf = WeatherFactory(apiKey, language: Language.ENGLISH);


        Position position = event.position;

        print(
            'Position received: Lat ${position.latitude}, Lon ${position.longitude}');

        Weather weather = await wf.currentWeatherByLocation(
            position.latitude, position.longitude);


        print('Weather data received: $weather');


        emit(WeatherBlocSuccess(weather));
      } catch (e) {

        print('Error fetching weather: $e');
        emit(WeatherBlocFailure(e.toString()));
      }
    });
  }
}
