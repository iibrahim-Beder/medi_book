import 'package:dartz/dartz.dart';
import 'package:medi_book/core/errors/failures.dart';
import 'package:medi_book/features/auth/domain/entities/create_acc_by_email_entitie.dart';
import 'package:medi_book/features/auth/domain/entities/login_entitie.dart';
import 'package:medi_book/features/auth/domain/entities/auth_response_entitie.dart';

abstract class AuthRepo {
  Future<Either<Failures, AuthResponseEntitie>> login(
      LoginEntitie loginRequestEntitie);

  Future<Either<Failures, AuthResponseEntitie>>
      createAccountWithEmail(
          CreateAccByEmailEntitie createAccountWithEmailEntitie);
}
