
import 'cubit.dart';

abstract class AppStates {}

class AppInitialState extends AppStates {
  AppInitialState(ConnectionStatus online);
}

class AppChangeBottomNavState extends AppStates {}

class AppChangeLanState extends AppStates {}
class ConnectionStatusOnlineState extends AppStates {}
class ConnectionStatusOfflineState extends AppStates {}
