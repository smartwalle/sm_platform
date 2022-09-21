import 'package:flutter/material.dart';
import 'package:sm_platform/sm_platform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          KIDeviceWidget(
            browser: (_) {
              return const Text("browser");
            },
            desktop: (_) {
              return const Text("desktop");
            },
            child: (_) {
              return const Text("default");
            },
          ),
          KIPlatformWidget(
            web: (_) {
              return const Text("web");
            },
            macOS: (_) {
              return const Text("macOS");
            },
            child: (_) {
              return const Text("default");
            },
          )
        ],
      ),
    );
  }
}
