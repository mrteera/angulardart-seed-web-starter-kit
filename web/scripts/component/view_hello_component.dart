library view_hello_component;

import 'package:angular/angular.dart';

@Component(
    selector: 'view-recipe',
    templateUrl: 'packages/angulardart_seed/component/view_hello_component.html',
    publishAs: 'cmp')
class ViewRecipeComponent {
  @NgOneWay('recipe-map')
  Map<String, Recipe> recipeMap;

  String _recipeId;

  Recipe get recipe => recipeMap == null ? null : recipeMap[_recipeId];

  ViewRecipeComponent(RouteProvider routeProvider) {
    _recipeId = routeProvider.parameters['recipeId'];
  }
}
