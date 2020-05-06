import 'package:counter_bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:remote_state/remote_state.dart';

void main() => runApp(ExampleApp());

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //1. Provided counter bloc
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc()..load(),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //2. Resolve counter bloc to update state
    final counterBloc = context.bloc<CounterBloc>();
    final textStyle = Theme.of(context).textTheme.display1;
    final fabPadding = EdgeInsets.symmetric(vertical: 5.0);

    return Scaffold(
      appBar: AppBar(
        title: Text("RemoteState with Bloc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            //3. Render state changes
            BlocBuilder<CounterBloc, RemoteState<int>>(
              builder: (_, state) => state.when(
                initial: () => Text('Not loaded', style: textStyle),
                success: (value) => Text('$value', style: textStyle),
                loading: () => Text('Loading...', style: textStyle),
                error: (_, __) => Text('Error', style: textStyle),
              ),
            )
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
              child: Icon(Icons.add),
              //4. Perform increment action
              onPressed: () => counterBloc.increment(),
            ),
          ),
          Padding(
            padding: fabPadding,
            child: FloatingActionButton(
              child: Icon(Icons.remove),
              //5. Perform decrement action
              onPressed: () => counterBloc.decrement(),
            ),
          ),
        ],
      ),
    );
  }
}
