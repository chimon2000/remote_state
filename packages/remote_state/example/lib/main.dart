import 'package:flutter/material.dart';
import 'package:remote_state/remote_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: 'RemoteState Example'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //1. Declare state
  RemoteState<int> counterState = RemoteState.initial();

  @override
  void initState() {
    _loadCount();

    super.initState();
  }

  //2. Load state asynchronously
  Future<void> _loadCount() async {
    setState(() {
      counterState = RemoteState.loading();
    });
    await Future.delayed(Duration(seconds: 1));
    setState(() {
      counterState = RemoteState.empty();
    });
  }

  Future<void> _incrementCounter() async {
    await Future.delayed(Duration(milliseconds: 200));

    setState(() {
      counterState = RemoteState.success(++_count);
    });
  }

  Future<void> _decrementCounter() async {
    await Future.delayed(Duration(milliseconds: 200));
    setState(() {
      counterState = RemoteState.success(--_count);
    });
  }

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.display1;
    final fabPadding = EdgeInsets.symmetric(vertical: 5.0);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            //3. Render state changes
            counterState.when(
              initial: () => Text('Not loaded', style: textStyle),
              empty: () => Text('Zero', style: textStyle),
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
              onPressed: _incrementCounter,
            ),
          ),
          Padding(
            padding: fabPadding,
            child: FloatingActionButton(
              heroTag: 'dec',
              child: Icon(Icons.remove),
              //5. Perform decrement action
              onPressed: _decrementCounter,
            ),
          ),
        ],
      ),
    );
  }
}

int _count = 0;
