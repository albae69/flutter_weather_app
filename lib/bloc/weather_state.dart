part of 'weather_bloc.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {
}

final class WeatherBlocLoading extends WeatherState {}

final class WeatherBlocFailure extends WeatherState {}

final class WeatherBlocSucces extends WeatherState {
  final Weather weather;

  const WeatherBlocSucces(this.weather);

  @override
  List<Object> get props => [weather];
}
