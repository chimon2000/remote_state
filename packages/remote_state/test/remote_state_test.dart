import 'package:flutter_test/flutter_test.dart';

import 'package:remote_state/remote_state.dart';

void main() {
  group('RemoteState.initial()', () {
    test('maybeWhen calls initial when state = RemoteState.initial()', () {
      final state = RemoteState.initial();

      expect(
          state.maybeWhen(
            orElse: () => false,
            initial: () => true,
          ),
          true);
    });
    test('maybeWhen calls orElse when state != RemoteState.initial()', () {
      final state = RemoteState.empty();

      expect(
          state.maybeWhen(
            orElse: () => false,
            initial: () => true,
          ),
          false);
    });
  });

  group('RemoteState.empty()', () {
    test('maybeWhen calls initial when state = RemoteState.empty()', () {
      final state = RemoteState.empty();

      expect(
          state.maybeWhen(
            orElse: () => throw Error(),
            empty: () => true,
          ),
          true);
    });
    test('maybeWhen calls orElse when state != RemoteState.empty()', () {
      final state = RemoteState.initial();

      expect(
          state.maybeWhen(
            orElse: () => false,
            empty: () => true,
          ),
          false);
    });
  });

  group('RemoteState.loading()', () {
    test('maybeWhen calls loading when state = RemoteState.loading()', () {
      final state = RemoteState.loading();

      expect(
          state.maybeWhen(
            orElse: () => false,
            loading: () => true,
          ),
          true);
    });
    test('maybeWhen calls orElse when state != RemoteState.loading()', () {
      final state = RemoteState.empty();

      expect(
          state.maybeWhen(
            orElse: () => true,
            loading: () => false,
          ),
          true);
    });
  });

  group('RemoteState.error()', () {
    test('maybeWhen calls error when state = RemoteState.error()', () {
      final state = RemoteState.error('err');

      expect(
          state.maybeWhen(
            orElse: () => false,
            error: (err) => err,
          ),
          'err');
    });
    test('maybeWhen calls orElse when state != RemoteState.error()', () {
      final state = RemoteState.empty();

      expect(
          state.maybeWhen(
            orElse: () => true,
            error: (err) => false,
          ),
          true);
    });
  });

  group('RemoteState.success()', () {
    test('maybeWhen calls success when state = RemoteState.success()', () {
      final state = RemoteState.success('success');

      expect(
          state.maybeWhen(
            orElse: () => false,
            success: (value) => value,
          ),
          'success');
    });
    test('maybeWhen calls orElse when state != RemoteState.success()', () {
      final state = RemoteState.error('success');

      expect(
          state.maybeWhen(
            orElse: () => false,
            success: (value) => value,
          ),
          false);
    });
  });
}
