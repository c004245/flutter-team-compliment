import 'package:flutter_team_compliment/model/UserEntity.dart';

abstract class IAuthenticationRepository {
  Future<UserEntity> signInWithGoogle();
}

class AuthenticationRepository implements IAuthenticationRepository {

  @override
  Future<UserEntity> signInWithGoogle() async {
    final userCredential = 
  }
}