library myapp_routing;

import 'package:angular/angular.dart';

void recipeBookRouteInitializer(Router router, RouteViewFactory views) {
  views.configure({
    'hello': ngRoute(
        path: '/hello',
        view: 'view/hello.html'),
        defaultRoute: true
  });
}
