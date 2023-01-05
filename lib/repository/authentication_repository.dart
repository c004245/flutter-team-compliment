import 'package:flutter_team_compliment/model/UserEntity.dart';
import 'package:flutter_team_compliment/provider/firebase_authentication_provider.dart';

abstract class IAuthenticationRepository {
  Future<UserEntity> signInWithGoogle();
}

class AuthenticationRepository implements IAuthenticationRepository {

  final FirebaseAuthenticationProvider _authProvider;

  AuthenticationRepository(this._authProvider);

  @override
  Future<UserEntity> signInWithGoogle() async {
    final userCredential = await _authProvider.signInWithGoogle();
    final uid = userCredential.user?.providerData.first?.uid;

    return UserEntity(id: "111", name: "c004245@naver.com");
  }
}