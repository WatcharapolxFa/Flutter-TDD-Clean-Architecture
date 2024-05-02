import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  @override
  List<Object?> get props => []; 

  const Failure();

}


class ServerFailure extends Failure {
  final String message;

  const ServerFailure(this.message);

  @override
  List<Object?> get props => [message];
}


class CacheFailure extends Failure {
  final String errorCode;

  const CacheFailure(this.errorCode);

  @override
  List<Object?> get props => [errorCode];
}
