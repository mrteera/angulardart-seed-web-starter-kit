library myapp;

import 'package:angular/angular.dart';
import 'package:angular/application_factory.dart';
import 'package:logging/logging.dart';

import 'package:angular_dart_demo/myapp.dart';
import 'package:angulardart_seed/routing/myapp_router.dart';
import 'package:angulardart_seed/component/view_hello_component.dart';

class MyAppModule extends Module {
  MyAppModule() {
    Binding.printInjectWarning = false;   // needed for https://github.com/angular/angular.dart/issues/1272

    bind(MyAppController);
    bind(ViewMyAppComponent);
    bind(RouteInitializerFn, toValue: recipeMyAppRouteInitializer);
    bind(NgRoutingUsePushState, toValue: new NgRoutingUsePushState.value(false));
  }
}

void main() {
  Logger.root..level = Level.FINEST
             ..onRecord.listen((LogRecord r) { print(r.message); });
  applicationFactory()
      .addModule(new MyAppModule())
      .run();
}
