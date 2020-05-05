class CounterClient {
  Future<int> getCount() {
    return Future.value(_count);
  }

  Future<int> increment() {
    ++_count;
    return Future.value(_count);
  }

  Future<int> decrement() {
    --_count;
    return Future.value(_count);
  }
}

int _count = 0;
