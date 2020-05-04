# RemoteState

![Build & test](https://github.com/chimon2000/remote_state/workflows/Build%20&%20test/badge.svg)
[![codecov](https://codecov.io/gh/chimon2000/remote_state/branch/master/graph/badge.svg)](https://codecov.io/gh/chimon2000/remote_state)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)

Tools for mapping data from remote sources in Dart, similar to Elm's RemoteData: https://elmprogramming.com/remote-data.html

| Package                                                                            | Pub                                                                                                    |
|------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------|
| [remote_state](https://github.com/felangel/bloc/tree/master/packages/remote_state) | [![pub package](https://img.shields.io/pub/v/remote_state.svg)](https://pub.dev/packages/remote_state) |

## Slaying a UI Antipattern with Flutter.

Library inspired by a blog post by [Kris Jenkins](https://twitter.com/krisajenkins) about [How Elm slays a UI antipattern](http://blog.jenkster.com/2016/06/how-elm-slays-a-ui-antipattern.html).

## What problem does this package solve?

You are making an API request, and you want to display or do different things based on the status of the request.

## Why RemoteState, not RemoteData?

I gained secondary inspiration from a talk by [Jed Watson](https://twitter.com/jedwatson), [A Treatise on State](https://www.youtube.com/watch?v=tBz3UmZG_bk).  As much as possible, I try to categorize state correctly in my applications.

## The RemoteState approach

Instead of using a complex object we use a single data type to express all possible request states. This approach makes it impossible to create invalid states.

## Usage

A common use case for RemoteState would be mapping it into a UI transition or component state.  Here is an example that uses [StateNotifier](https://pub.dev/documentation/state_notifier/latest/state_notifier/StateNotifier-class.html), found in [examples/counter_state_notifier](https://github.com/chimon2000/remote_state/blob/master/examples/counter_state_notifier)

### [counter/notifier/counter.dart](https://github.com/chimon2000/remote_state/blob/master/examples/counter_state_notifier/lib/counter/notifier/counter.dart)

```dart

class Counter extends StateNotifier<int> {
  Counter(): super(RemoteState.initial())

  void increment() {
    try {
      state = RemoteState.loading();

      var count = await api.increment();

      state = RemoteState.success(count);
    } catch (e) {
      state = RemoteState.error(e.message);
    }
  }
}

```

### [main.dart](https://github.com/chimon2000/remote_state/blob/master/examples/counter_state_notifier/lib/main.dart)

```dart
class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateNotifierProvider<CounterNotifier, RemoteState<int>>.value(
        value: CounterNotifier(),
        child: HomePage(),
      ),
    );
  }
}
```

### [home.dart](https://github.com/chimon2000/remote_state/blob/master/examples/counter_state_notifier/lib/home.dart)

```dart
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //2. Resolve counter notifier to update state
    var counterNotifier = Provider.of<CounterNotifier>(context);
    var counterState = Provider.of<RemoteState<int>>(context);

    var textStyle = Theme.of(context).textTheme.display1;
    final fabPadding = EdgeInsets.symmetric(vertical: 5.0);

    return Scaffold(
      appBar: AppBar(
        title: Text('RemoteState with StateNotifier'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            //3. Render state changes
            counterState.when(
              initial: () => Text('Not loaded', style: textStyle),
              empty: () => Text('Never', style: textStyle),
              success: (value) => Text('$value', style: textStyle),
              loading: () => Text('Loading...', style: textStyle),
              error: (_) => Text('Error', style: textStyle),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: fabPadding,
            child: FloatingActionButton(
              heroTag: 'inc',
              child: Icon(Icons.add),
              //4. Perform increment action
              onPressed: () => counterNotifier.increment(),
            ),
          ),
          Padding(
            padding: fabPadding,
            child: FloatingActionButton(
              heroTag: 'dec',
              child: Icon(Icons.remove),
              //5. Perform decrement action
              onPressed: () => counterNotifier.decrement(),
            ),
          ),
        ],
      ),
    );
  }
}
```

## API

### RemoteState

`RemoteState<T>` is usedto annotate your request variables. It wraps all possible request states into one single union type. Use the parameters to specify.

- T: The success value type.

### RemoteState.initial

`RemoteState.initial` is an instance of RemoteState that signifies the request hasn't been made yet.

### RemoteState.loading

`RemoteState.loading` is an instance of RemoteState that signifies the request has been made, but it hasn't returned any data yet.

### RemoteState.success

`RemoteState.success` is an instance of RemoteState that signifies the request has completed successfully and the new data (of type T) is available.

### RemoteState.empty

`RemoteState.success` is an instance of RemoteState that signifies the has completed successfully with an empty response.

### RemoteState.error

`RemoteState.error` is an instance of RemoteState that signifies the request has failed.

## Pattern matching high order functions

### When

The `when` method is a high order function that accepts a method for each state and matches the request state with the appropriate callback function. All callbacks are **required** and must not be null.

### MaybeWhen

The `maybeWhen` method is a high order function that accepts a method for each state and matches the request state with the appropriate callback function or a fallback callback for missing methods.  Only `orElse` is required.

### Map

The `map` method is the equivalent of `when` without the destructuring.

### MaybeMap

The `maybeWhen` method is the equivalent of `when` without the destructuring.

## State Predicates

### isInitial

 The `isInitial` predicate returns true if we haven't asked for data yet.

### isLoading

 The `isLoading` predicate returns true if we're loading.

### isSuccess

 The `isSuccess` predicate returns true if we've successfully loaded some data.

### isError

 The `isError` predicate returns true if we've failed to load some data.

## Maintainers

- [Ryan Edge](https://github.com/chimon2000)

## References

- [How to fix a bad user interface](https://www.scotthurff.com/posts/why-your-user-interface-is-awkward-youre-ignoring-the-ui-stack/)

- [Slaying a UI Antipattern with Web Components (and TypeScript)](https://bendyworks.com/blog/slaying-a-ui-antipattern-with-web-components-and-typescript)

- [How Elm Slays a UI Antipattern](http://blog.jenkster.com/2016/06/how-elm-slays-a-ui-antipattern.html)

- [Slaying a UI Antipattern with Angular](https://medium.com/@joanllenas/slaying-a-ui-antipattern-with-angular-4c7536fafc54)

- [Slaying a UI Antipattern with Flow](https://medium.com/@gcanti/slaying-a-ui-antipattern-with-flow-5eed0cfb627b)

- [Slaying a UI Antipattern in React](https://medium.com/javascript-inside/slaying-a-ui-antipattern-in-react-64a3b98242c)

- [Slaying a UI Antipattern in Fantasyland](https://medium.com/javascript-inside/slaying-a-ui-antipattern-in-fantasyland-907cbc322d2a)
