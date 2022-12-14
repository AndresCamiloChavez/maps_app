part of 'gps_bloc.dart';

class GpsState extends Equatable {
  final bool isGpsEnabled;
  final bool isGpsPermissionGranted;

  const GpsState(
      {required this.isGpsEnabled, required this.isGpsPermissionGranted});

  GpsState copyWith({bool? isGpsEnabled, bool? isGpsPermissionGranted}) {
    return GpsState( isGpsEnabled: isGpsEnabled ?? this.isGpsEnabled,isGpsPermissionGranted: isGpsPermissionGranted ?? this.isGpsPermissionGranted);
  }

  // propiedades que nos permiten identificar que un estado es igual o diferente a otro
  @override
  List<Object> get props => [isGpsEnabled, isGpsPermissionGranted];

  @override
  String toString() =>
      '{ isGpsEnabled: $isGpsEnabled, isGpsPermissionGranted: $isGpsPermissionGranted }';
}
