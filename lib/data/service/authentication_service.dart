import 'package:flutter_team_compliment/model/UserEntity.dart';
import 'package:flutter_team_compliment/repository/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class IAuthenticationService {
  Future<String?> signInWithGoogle();
}

class AuthenticationService implements IAuthenticationService {

  final IAuthenticationRepository _repository;

  AuthenticationService(this._repository);

  @override
  Future<String?> signInWithGoogle() async {
    final user = await _repository.signInWithGoogle();
    return _signInCompletion(user);
  }

  Future<String?> _signInCompletion(UserEntity user) async {
    return Future.value(user.id);
  }
}