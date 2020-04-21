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

Here is an example that uses [StateNotifier](https://pub.dev/documentation/state_notifier/latest/state_notifier/StateNotifier-class.html).

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
