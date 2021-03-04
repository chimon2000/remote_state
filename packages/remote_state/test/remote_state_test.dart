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

      state = RemoteState.success('');

      expect(state.maybeWhen(orElse: () => throw Error(), success: (_) => true),
          true);

      state = RemoteState.error('');

      expect(
          state.maybeWhen(orElse: () => throw Error(), error: (_, __) => true),
          true);
    });

    test('maybeWhen calls orElse', () {
      var state = RemoteState.initial();

      expect(state.maybeWhen(orElse: () => true, loading: () => false), true);

      state = RemoteState.loading();

      expect(state.maybeWhen(orElse: () => true, initial: () => false), true);

      state = RemoteState.success('');

      expect(state.maybeWhen(orElse: () => true, initial: () => false), true);

      state = RemoteState.error('');

      expect(state.maybeWhen(orElse: () => true, initial: () => false), true);
    });
  });

  group('when', () {
    test('when call correct state', () {
      var state = RemoteState.initial();

      expect(
          state.when(
            initial: () => true,
            success: (_) => false,
            error: (_, __) => false,
            loading: () => false,
          ),
          true);

      state = RemoteState.loading();

      expect(
          state.when(
            loading: () => true,
            success: (_) => false,
            error: (_, __) => false,
            initial: () => false,
          ),
          true);
      state = RemoteState.error('err');

      expect(
          state.when(
            error: (_, __) => true,
            success: (_) => false,
            loading: () => false,
            initial: () => false,
          ),
          true);

      state = RemoteState.success('success');

      expect(
          state.when(
            success: (_) => true,
            error: (_, __) => false,
            loading: () => false,
            initial: () => false,
          ),
          true);
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
            error: (err) => err.error,
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
      var state = RemoteState.initial();

      expect(
          state.maybeMap(
            orElse: () => true,
            loading: (_) => throw Error(),
          ),
          true);

      state = RemoteState.loading();

      expect(
          state.maybeMap(
            orElse: () => true,
            initial: (_) => throw Error(),
          ),
          true);

      state = RemoteState.error('err');

      expect(
          state.maybeMap(
            orElse: () => true,
            initial: (_) => throw Error(),
          ),
          true);

      state = RemoteState.success('success');

      expect(
          state.maybeMap(
            orElse: () => true,
            initial: (value) => throw Error(),
          ),
          true);
    });
  });

  group('map', () {
    test('map calls correct state', () {
      var state = RemoteState.initial();

      expect(
          state.map(
            success: (_) => false,
            error: (_) => false,
            initial: (_) => true,
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
          ),
          true);

      state = RemoteState.error('err');

      expect(
          state.map(
            error: (_) => true,
            success: (_) => false,
            loading: (_) => false,
            initial: (_) => false,
          ),
          true);

      state = RemoteState.success('success');

      expect(
          state.map(
            success: (_) => true,
            error: (_) => false,
            loading: (_) => false,
            initial: (_) => false,
          ),
          true);
    });
  });

  group('State predicates', () {
    test('Only one predicate true at a time.', () {
      var state = RemoteState.initial();
      expect(state.isInitial, true);
      expect(state.isLoading, false);
      expect(state.isSuccess, false);
      expect(state.isError, false);

      state = RemoteState.loading();
      expect(state.isInitial, false);
      expect(state.isLoading, true);
      expect(state.isSuccess, false);
      expect(state.isError, false);

      state = RemoteState.success('');
      expect(state.isInitial, false);
      expect(state.isLoading, false);
      expect(state.isSuccess, true);
      expect(state.isError, false);

      state = RemoteState.error('');
      expect(state.isInitial, false);
      expect(state.isLoading, false);
      expect(state.isSuccess, false);
      expect(state.isError, true);
    });
  });

  group('RemoteState equality', () {
    test('No two states are equal', () {
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
      expect(
        RemoteState.success('').hashCode,
        RemoteState.success('').hashCode,
      );
    });
  });

  group('state predicates', () {
    test('predicates match state', () {
      var state = RemoteState.success('');
      expect(state.isSuccess, true);
      expect(state.isError, false);
      expect(state.isLoading, false);
      expect(state.isInitial, false);

      state = RemoteState.loading();
      expect(state.isSuccess, false);
      expect(state.isError, false);
      expect(state.isLoading, true);
      expect(state.isInitial, false);

      state = RemoteState.initial();
      expect(state.isSuccess, false);
      expect(state.isError, false);
      expect(state.isLoading, false);
      expect(state.isInitial, true);

      state = RemoteState.error();
      expect(state.isSuccess, false);
      expect(state.isError, true);
      expect(state.isLoading, false);
      expect(state.isInitial, false);
    });
  });

  group('toString', () {
    test('prints correct match', () {
      expect(RemoteState.success('').toString(),
          'RemoteState<String>.success(value: )');
      expect(RemoteState.error('').toString(),
          'RemoteState<dynamic>.error(error: , stackTrace: null)');
      expect(
          RemoteState.loading().toString(), 'RemoteState<dynamic>.loading()');
      expect(
          RemoteState.initial().toString(), 'RemoteState<dynamic>.initial()');
    });
  });

  group('RemoteState.guard', () {
    test('emits RemoteState.success when future completes', () async {
      var value = await RemoteState.guard(() => Future.value(0));
      expect(value, RemoteState.success(0));
    });
    test('emits RemoteState.error when future fails', () async {
      final stack = StackTrace.current;

      var value = await RemoteState.guard(() => Future.error(0, stack));
      expect(value, RemoteState.error(0, stack));
    });
  });
}

mapNoOp(_) {}
whenNoOp() {}
whenSuccessNoOp(_) {}
whenErrorNoOp(_, __) {}
