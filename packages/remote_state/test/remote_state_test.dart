import 'package:test/test.dart';
import 'package:remote_state/remote_state.dart';

void main() {
  group('maybeWhen', () {
    test('maybeWhen calls matching state', () {
      var state = RemoteState.initial();

      expect(state.maybeWhen(orElse: () => false, initial: () => true), true);

      state = RemoteState.loading();

      expect(state.maybeWhen(orElse: () => throw Error(), loading: () => true),
          true);

      state = RemoteState.empty();

      expect(state.maybeWhen(orElse: () => throw Error(), empty: () => true),
          true);

      state = RemoteState.success('');

      expect(state.maybeWhen(orElse: () => throw Error(), success: (_) => true),
          true);

      state = RemoteState.error('');

      expect(state.maybeWhen(orElse: () => throw Error(), error: (_) => true),
          true);
    });

    test('maybeWhen calls orElse', () {
      var state = RemoteState.initial();

      expect(state.maybeWhen(orElse: () => true, empty: () => false), true);

      state = RemoteState.loading();

      expect(state.maybeWhen(orElse: () => true, empty: () => false), true);

      state = RemoteState.empty();

      expect(state.maybeWhen(orElse: () => true, loading: () => false), true);

      state = RemoteState.success('');

      expect(state.maybeWhen(orElse: () => true, empty: () => false), true);

      state = RemoteState.error('');

      expect(state.maybeWhen(orElse: () => true, empty: () => false), true);
    });

    test('maybeWhen throws assert error when missing orElse', () {
      var state = RemoteState.initial();

      expect(() => state.maybeWhen(initial: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(loading: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(empty: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(success: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(error: (_) => {}),
          throwsA(isA<AssertionError>()));

      state = RemoteState.loading();

      expect(() => state.maybeWhen(initial: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(loading: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(empty: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(success: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(error: (_) => {}),
          throwsA(isA<AssertionError>()));

      state = RemoteState.empty();

      expect(() => state.maybeWhen(initial: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(loading: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(empty: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(success: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(error: (_) => {}),
          throwsA(isA<AssertionError>()));

      state = RemoteState.success('');

      expect(() => state.maybeWhen(initial: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(loading: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(empty: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(success: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(error: (_) => {}),
          throwsA(isA<AssertionError>()));

      state = RemoteState.error('');

      expect(() => state.maybeWhen(initial: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(loading: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(empty: () => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(success: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeWhen(error: (_) => {}),
          throwsA(isA<AssertionError>()));
    });
  });

  group('when', () {
    test('when call correct state', () {
      var state = RemoteState.initial();

      expect(
          state.when(
            initial: () => true,
            success: (_) => false,
            error: (_) => false,
            empty: () => false,
            loading: () => false,
          ),
          true);
      state = RemoteState.empty();

      expect(
          state.when(
            empty: () => true,
            success: (_) => false,
            error: (_) => false,
            initial: () => false,
            loading: () => false,
          ),
          true);
      state = RemoteState.loading();

      expect(
          state.when(
            loading: () => true,
            success: (_) => false,
            error: (_) => false,
            initial: () => false,
            empty: () => false,
          ),
          true);
      state = RemoteState.error('err');

      expect(
          state.when(
            error: (_) => true,
            success: (_) => false,
            loading: () => false,
            initial: () => false,
            empty: () => false,
          ),
          true);

      state = RemoteState.success('success');

      expect(
          state.when(
            success: (_) => true,
            error: (_) => false,
            loading: () => false,
            initial: () => false,
            empty: () => false,
          ),
          true);
    });
    test('when throws assert error when missing state', () {
      var state = RemoteState.empty();

      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                error: (_) => {},
                loading: () => {},
              ),
          throwsA(isA<AssertionError>()));
      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                loading: () => {},
                empty: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                loading: () => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                success: (_) => {},
                loading: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      state = RemoteState.initial();

      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                error: (_) => {},
                loading: () => {},
              ),
          throwsA(isA<AssertionError>()));
      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                loading: () => {},
                empty: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                loading: () => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                success: (_) => {},
                loading: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      state = RemoteState.success('');

      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                error: (_) => {},
                loading: () => {},
              ),
          throwsA(isA<AssertionError>()));
      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                loading: () => {},
                empty: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                loading: () => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                success: (_) => {},
                loading: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      state = RemoteState.error('');

      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                error: (_) => {},
                loading: () => {},
              ),
          throwsA(isA<AssertionError>()));
      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                loading: () => {},
                empty: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                loading: () => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                success: (_) => {},
                loading: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      state = RemoteState.loading();

      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                error: (_) => {},
                loading: () => {},
              ),
          throwsA(isA<AssertionError>()));
      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                loading: () => {},
                empty: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                success: (_) => {},
                empty: () => {},
                loading: () => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.when(
                success: (_) => {},
                loading: () => {},
                error: (_) => {},
                initial: () => {},
              ),
          throwsA(isA<AssertionError>()));
    });
  });
  group('RemoteState equality', () {
    test('No two states are equal', () {
      expect(RemoteState.empty(), RemoteState.empty());
      expect(RemoteState.error(), RemoteState.error());
      expect(RemoteState.initial(), RemoteState.initial());
      expect(RemoteState.loading(), RemoteState.loading());
      expect(RemoteState.success(''), RemoteState.success(''));

      expect(
        RemoteState.loading().hashCode,
        RemoteState.loading().hashCode,
      );
      expect(
        RemoteState.initial().hashCode,
        RemoteState.initial().hashCode,
      );
      expect(
        RemoteState.error().hashCode,
        RemoteState.error().hashCode,
      );
      expect(RemoteState.empty().hashCode, RemoteState.empty().hashCode);
      expect(
        RemoteState.success('').hashCode,
        RemoteState.success('').hashCode,
      );
    });
  });

  group('maybeMap', () {
    test('maybeMap calls matching state', () {
      var state = RemoteState.initial();

      expect(
          state.maybeMap(
            orElse: () => throw Error(),
            initial: (_) => true,
          ),
          true);

      state = RemoteState.empty();

      expect(
          state.maybeMap(
            orElse: () => throw Error(),
            empty: (_) => true,
          ),
          true);

      state = RemoteState.loading();

      expect(
          state.maybeMap(
            orElse: () => false,
            loading: (_) => true,
          ),
          true);

      state = RemoteState.error('err');

      expect(
          state.maybeMap(
            orElse: () => false,
            error: (err) => err.message,
          ),
          'err');

      state = RemoteState.success('success');

      expect(
          state.maybeMap(
            orElse: () => false,
            success: (value) => value.value,
          ),
          'success');
    });
    test('maybeMap calls orElse', () {
      var state = RemoteState.empty();

      expect(
          state.maybeMap(
            orElse: () => true,
            initial: (_) => throw Error(),
          ),
          true);

      state = RemoteState.initial();

      expect(
          state.maybeMap(
            orElse: () => true,
            empty: (_) => throw Error(),
          ),
          true);

      state = RemoteState.loading();

      expect(
          state.maybeMap(
            orElse: () => true,
            empty: (_) => throw Error(),
          ),
          true);

      state = RemoteState.error('err');

      expect(
          state.maybeMap(
            orElse: () => true,
            empty: (_) => throw Error(),
          ),
          true);

      state = RemoteState.success('success');

      expect(
          state.maybeMap(
            orElse: () => true,
            empty: (value) => throw Error(),
          ),
          true);
    });

    test('maybeMap throws assert error when missing orElse', () {
      var state = RemoteState.initial();

      expect(() => state.maybeMap(initial: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(loading: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(empty: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(success: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(error: (_) => {}),
          throwsA(isA<AssertionError>()));

      state = RemoteState.loading();

      expect(() => state.maybeMap(initial: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(loading: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(empty: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(success: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(error: (_) => {}),
          throwsA(isA<AssertionError>()));

      state = RemoteState.empty();

      expect(() => state.maybeMap(initial: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(loading: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(empty: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(success: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(error: (_) => {}),
          throwsA(isA<AssertionError>()));

      state = RemoteState.success('');

      expect(() => state.maybeMap(initial: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(loading: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(empty: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(success: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(error: (_) => {}),
          throwsA(isA<AssertionError>()));

      state = RemoteState.error('');

      expect(() => state.maybeMap(initial: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(loading: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(empty: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(success: (_) => {}),
          throwsA(isA<AssertionError>()));

      expect(() => state.maybeMap(error: (_) => {}),
          throwsA(isA<AssertionError>()));
    });
  });

  group('map', () {
    test('map calls correct state', () {
      var state = RemoteState.initial();

      expect(
          state.map(
            empty: (_) => false,
            success: (_) => false,
            error: (_) => false,
            initial: (_) => true,
            loading: (_) => false,
          ),
          true);

      state = RemoteState.empty();

      expect(
          state.map(
            empty: (_) => true,
            success: (_) => false,
            error: (_) => false,
            initial: (_) => false,
            loading: (_) => false,
          ),
          true);

      state = RemoteState.loading();

      expect(
          state.map(
            loading: (_) => true,
            success: (_) => false,
            error: (_) => false,
            initial: (_) => false,
            empty: (_) => false,
          ),
          true);

      state = RemoteState.error('err');

      expect(
          state.map(
            error: (_) => true,
            success: (_) => false,
            loading: (_) => false,
            initial: (_) => false,
            empty: (_) => false,
          ),
          true);

      state = RemoteState.success('success');

      expect(
          state.map(
            success: (_) => true,
            error: (_) => false,
            loading: (_) => false,
            initial: (_) => false,
            empty: (_) => false,
          ),
          true);
    });

    test('map throws assert error when missing state', () {
      var state = RemoteState.empty();

      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                loading: (_) => {},
              ),
          throwsA(isA<AssertionError>()));
      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                loading: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                loading: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                success: (_) => {},
                loading: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      state = RemoteState.initial();

      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                loading: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                loading: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                loading: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                success: (_) => {},
                loading: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      state = RemoteState.success('');

      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                loading: (_) => {},
              ),
          throwsA(isA<AssertionError>()));
      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                loading: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                loading: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                success: (_) => {},
                loading: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      state = RemoteState.error('');

      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                loading: (_) => {},
              ),
          throwsA(isA<AssertionError>()));
      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                loading: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                loading: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                success: (_) => {},
                loading: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      state = RemoteState.loading();

      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                loading: (_) => {},
              ),
          throwsA(isA<AssertionError>()));
      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                loading: (_) => {},
                empty: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                success: (_) => {},
                empty: (_) => {},
                loading: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));

      expect(
          () => state.map(
                success: (_) => {},
                loading: (_) => {},
                error: (_) => {},
                initial: (_) => {},
              ),
          throwsA(isA<AssertionError>()));
    });
  });

  group('toString', () {
    test('prints correct match', () {
      expect(RemoteState.success('').toString(),
          'RemoteState<String>.success(value: )');
      expect(RemoteState.error('').toString(),
          'RemoteState<dynamic>.error(message: )');
      expect(
          RemoteState.loading().toString(), 'RemoteState<dynamic>.loading()');
      expect(RemoteState.empty().toString(), 'RemoteState<dynamic>.empty()');
      expect(
          RemoteState.initial().toString(), 'RemoteState<dynamic>.initial()');
    });
  });
}
