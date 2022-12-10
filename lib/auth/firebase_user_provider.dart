import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class IsetjmapFirebaseUser {
  IsetjmapFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

IsetjmapFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<IsetjmapFirebaseUser> isetjmapFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<IsetjmapFirebaseUser>(
      (user) {
        currentUser = IsetjmapFirebaseUser(user);
        return currentUser!;
      },
    );
