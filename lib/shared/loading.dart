import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pokemate/themes/theme_notifiers.dart';
import 'package:provider/provider.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.read<ThemeNotifier>();
    return Container(
      decoration: BoxDecoration(image: colors.bgImage),
      child: Center(
        child: SpinKitCircle(
          size: 100,
          color: colors.accent,
        ),
      ),
    );
  }
}

class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colors = context.read<ThemeNotifier>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(image: colors.bgImage),
          child: Center(
            child: SpinKitCircle(
              size: 100,
              color: colors.accent,
            ),
          ),
        ),
      ),
    );
  }
}

class LoadingSmall extends StatelessWidget {
  final double size;

  const LoadingSmall({double? size, Key? key})
      : size=size ?? 100,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      child: SpinKitCircle(
        size: size,
        color: context
            .read<ThemeNotifier>()
            .accent,
      ),
    );
  }
}