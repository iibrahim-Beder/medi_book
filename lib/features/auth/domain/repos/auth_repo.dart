import 'package:dartz/dartz.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/features/auth/domain/entities/login_request_entitie.dart';
import 'package:medi_book/features/auth/domain/entities/login_response_entitie.dart';

abstract class AuthRepo{
  
  Future<Either<Failures,LoginResponseEntitie>> login(LoginRequestEntitie loginRequestEntitie);

}
