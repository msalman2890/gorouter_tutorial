import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_tutorial/main.dart';
import 'package:go_router_tutorial/screenb.dart';
import 'error_widget.dart' as e;

class AppRoute {
  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (BuildContext context, GoRouterState state){
        return MyHomePage();
      }
    ),
    GoRoute(
        path: "/b",
        builder: (BuildContext context, GoRouterState state){
          return ScreenB();
        }
    )
  ],
    errorBuilder: (context, state){
    return e.ErrorWidget(error: state.error.toString());
    }
  );
}
