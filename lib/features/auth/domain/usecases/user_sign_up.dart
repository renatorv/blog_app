import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:fpdart/fpdart.dart';

class UserSignUp implements UseCase {
  @override
  Future<Either<Failures, dynamic>> call(params) {
    throw UnimplementedError();
  }
}
