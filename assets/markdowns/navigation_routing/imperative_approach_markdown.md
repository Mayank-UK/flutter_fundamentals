## adding all the routes in a class to access paths throughout the codebase
    class RoutePaths {
        static const String home = '/';
        static const String login = '/login';
        static const String register = '/register';
    }

## adding all the router logic inside a class
    class MyRouter {
        static Route<dynamic> generateRoute(RouteSettings settings) {
            switch (settings.name) {
                case RoutePaths.home:
                    return MaterialPageRoute(
                        builder: (_) => HomeView(),
                    );
                case RoutePaths.LoginView:
                    return MaterialPageRoute(
                        builder: (_) => LoginView(),
                    )
                case RoutePaths.RegisterView:
                    return MaterialPageRoute(
                        builder: (_) => RegisterView(),
                    )
            }
        }
    }

## root widget that will have all the routes and switch between views
    MaterialApp(
        title: 'Flutter fundamentals',
        initialRoute: RoutePaths.home,
        onGenerateRoute: MyRouter.generateRoute,
    ),

## navigate back and forth using Navigator.of()
### navigate to a view
    Navigator.of(context).pushNamed(
        RoutePaths.home;
    );

### navigate back to previous view
    Navigator.of(context).pop();
    
### review previous view and navigate to new view
    Navigator.of(context).popAndPushNamed(
        RoutePaths.LoginView();
    );

### there are other navigation strategies like
    Navigator.of(context).pushReplacementNamed(
        RoutePaths.LoginView();
    );

    and many more (read about them in documentation)...
    