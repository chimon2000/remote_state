# remote_state

## Slaying a UI Antipattern with Angular.

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
