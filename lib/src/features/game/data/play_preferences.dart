import 'package:lichess_mobile/src/common/shared_preferences.dart';

import '../model/computer_opponent.dart';
import '../model/time_control.dart';

final computerOpponentPrefProvider = createPrefProvider(
  prefKey: 'play.computerOpponent',
  defaultValue: ComputerOpponent.maia1,
  mapFrom: (v) => ComputerOpponent.values.firstWhere((e) => e.toString() == v,
      orElse: () => ComputerOpponent.maia1),
  mapTo: (v) => v.toString(),
);

final stockfishLevelProvider = createPrefProvider(
  prefKey: 'play.stockfishLevel',
  defaultValue: 1,
);

final timeControlPrefProvider = createPrefProvider(
  prefKey: 'play.timeControl',
  defaultValue: TimeControl.blitz4,
  mapFrom: (v) => TimeControl.values.firstWhere(
      (e) => v != null ? e.value == TimeInc.fromString(v) : false,
      orElse: () => TimeControl.blitz4),
  mapTo: (v) => v.value.toString(),
);
