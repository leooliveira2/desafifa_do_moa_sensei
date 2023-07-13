import 'package:desafifa_do_moa/provider/auth.dart';
import 'package:desafifa_do_moa/mvp/pages/fifth_page.dart';
import 'package:desafifa_do_moa/mvp/pages/fourth_page.dart';
import 'package:desafifa_do_moa/mvp/pages/home_page.dart';
import 'package:desafifa_do_moa/mvp/pages/login_page.dart';
import 'package:desafifa_do_moa/mvp/pages/one_page.dart';
import 'package:desafifa_do_moa/mvp/pages/sign_up_page.dart';
import 'package:desafifa_do_moa/mvp/pages/two_page.dart';
import 'package:desafifa_do_moa/mvp/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  final Auth _auth = Auth();
  bool redirect = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(
      routes: <RouteBase>[
        GoRoute(
          path: WelcomePage.routeName,
          name: WelcomePage.routeName,
          pageBuilder: (context, state) => WelcomePage(),
          routes: <RouteBase>[
            GoRoute(
              path: LoginPage.routeName,
              name: LoginPage.routeName,
              pageBuilder: (context, state) => LoginPage(),
            ),
            GoRoute(
              path: SignUpPage.routeName,
              name: SignUpPage.routeName,
              pageBuilder: (context, state) => SignUpPage(),
            )
          ],
        ),
        GoRoute(
          path: HomePage.routeName,
          name: HomePage.routeName,
          pageBuilder: (context, state) => HomePage(),
        ),
        GoRoute(
          path: OnePage.routeName,
          name: OnePage.routeName,
          pageBuilder: (context, state) => OnePage(),
        ),
        GoRoute(
          path: TwoPage.routeName,
          name: TwoPage.routeName,
          pageBuilder: (context, state) => TwoPage(),
        ),
        GoRoute(
          path: FourthPage.routeName,
          name: FourthPage.routeName,
          pageBuilder: (context, state) => FourthPage(),
        ),
        GoRoute(
          path: FifthPage.routeName,
          name: FifthPage.routeName,
          pageBuilder: (context, state) => FifthPage(),
        ),
      ],
      redirect: (context, state) {
        bool isLogged = _auth.isLogged;
        //bool inLogin = state.matchedLocation == LoginPage.routeName;

        if (!isLogged) {
          redirect = true;
        }

        if (!isLogged && redirect) {
          return state.location.contains(LoginPage.routeName)
              ? state.namedLocation(LoginPage.routeName)
              : state.location.contains(SignUpPage.routeName)
                  ? state.namedLocation(SignUpPage.routeName)
                  : state.namedLocation(WelcomePage.routeName);
        }

        if (isLogged && redirect) {
          redirect = false;
          return state.namedLocation(HomePage.routeName);
        }

        return null;
      },
      refreshListenable: _auth,
    );

    return ChangeNotifierProvider<Auth>.value(
      value: _auth,
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          scaffoldBackgroundColor: const Color.fromARGB(244, 218, 213, 213),
        ),
        routerConfig: router,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
