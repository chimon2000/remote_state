import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:state_notifier/state_notifier.dart';

T useStateNotifier<T>(StateNotifier<T> notifier) {
  final state = useState<T>(null);

  useEffect(() {
    return notifier.addListener((s) => state.value = s);
  }, [notifier]);

  return state.value;
}
