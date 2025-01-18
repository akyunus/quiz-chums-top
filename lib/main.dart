import 'package:flutter/material.dart';
import 'package:quiz/router.dart';

void main() => runApp(
      MaterialApp.router(
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
      ),
    );
