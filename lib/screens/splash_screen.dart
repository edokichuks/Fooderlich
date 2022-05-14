import 'package:flutter/material.dart';
import 'package:fooderlich_7/models/app_state_manager.dart';
import 'package:fooderlich_7/models/fooderlich_pages.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  // TODO: SplashScreen MaterialPage Helper
  static MaterialPage page() {
    return MaterialPage(
      name: FooderlichPages.splashPath,
      key: ValueKey(FooderlichPages.splashPath),
      child: SplashScreen(),
    );
  }

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // TODO: Initialize App
    Provider.of<AppStateManager>(context, listen: false).initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              height: 200,
              image: AssetImage('assets/fooderlich_assets/rw_logo1.jpg'),
            ),
            const Text('Initializing...'),
          ],
        ),
      ),
    );
  }
}
