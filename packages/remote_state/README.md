# RemoteData

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

Here is an example that uses [StateNotifier](https://pub.dev/documentation/state_notifier/latest/state_notifier/StateNotifier-class.html), found in [examples/counter_state_notifier](https://github.com/chimon2000/remote_state/blob/master/examples/counter_state_notifier)

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

### Maintainers

- [Ryan Edge](https://github.com/chimon2000)
