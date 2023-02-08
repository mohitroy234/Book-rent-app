import 'package:flutter/material.dart';

class HeroDialogRoute<T> extends PageRoute<T>{
  HeroDialogRoute({
    required WidgetBuilder builder,
    bool fullscreenDialog=false,
}): _builder=builder,super(fullscreenDialog: fullscreenDialog);

  final WidgetBuilder _builder;

  @override
  bool get opaque =>false;

  @override
  bool get barrierDismissible =>true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  bool get maintainState =>true;

  @override
  Color get barrierColor => Colors.white;

  @override
  Widget buildTransitions(BuildContext context,Animation<double> animation,
      Animation<double> secondaryAnimation ,Widget child){
    return child;
  }

  @override
  // TODO: implement barrierLabel
  String? get barrierLabel => 'Popup Dialog open';

  @override
  Widget buildPage(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
    // TODO: implement buildPage
    return _builder(context);
  }
}