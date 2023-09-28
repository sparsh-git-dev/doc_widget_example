import 'package:flutter/material.dart';
import 'package:storybook_flutter/storybook_flutter.dart';

void main() {
  runApp(const MyApp2());
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) => Storybook(
        stories: [
          Story(
            name: 'Screens/Counter',
            description: 'Demo Counter app with about dialog.',
            builder: (context) => MyApp(
                // title: context.knobs.text(label: 'Title', initial: 'Counter'),
                // enabled: context.knobs.boolean(label: 'Enabled', initial: true),
                ),
          ),
          Story(
            name: 'Widgets/Text',
            description: 'Simple text widget.',
            builder: (context) => const Center(child: Text('Simple text')),
          ),
        ],
      );
}

final GlobalKey<ScaffoldMessengerState> scaffoldKey =
    GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        scaffoldKey.currentState?.hideCurrentSnackBar();
        // ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
      child: WillPopScope(
        onWillPop: () async {
          scaffoldKey.currentState?.hideCurrentSnackBar();
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          return true;
        },
        child: MaterialApp(
          scaffoldMessengerKey: scaffoldKey,
          title: 'Flutter Demo',
          navigatorObservers: [MyNavigatorObserver()],
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const Scaffold(),
        ),
      ),
    );
  }
}

class MyNavigatorObserver extends NavigatorObserver {
  @override
  bool didStartUserGesture(
      Route<dynamic> route, Route<dynamic>? previousRoute) {
    scaffoldKey.currentState?.hideCurrentSnackBar();
    return true;
  }

  @override
  bool didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    scaffoldKey.currentState?.hideCurrentSnackBar();
    // Intercept the back button press here
    if (previousRoute == null) {
      // This means the user is attempting to exit the app
      // You can add your own logic here
      // For example, show a confirmation dialog
      showDialog(
        context: navigator!.overlay!.context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Exit App?'),
            content: const Text('Are you sure you want to exit the app?'),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop(false); // Cancel the exit
                },
              ),
              TextButton(
                child: const Text('Exit'),
                onPressed: () {
                  Navigator.of(context).pop(true); // Confirm the exit
                },
              ),
            ],
          );
        },
      ).then((confirmedExit) {
        if (confirmedExit == true) {
          // If the user confirmed the exit, close the app
          // You can replace this with your own exit logic
          // Navigator.of(navigator.overlay!.context).pop();
        }
      });
    }
    return true; // Return true to allow the back navigation
  }
}
