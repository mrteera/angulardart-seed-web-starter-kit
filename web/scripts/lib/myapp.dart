library myapp_controller;

import 'package:angular/angular.dart';

@Controller(
    selector: '[myapp]',
    publishAs: 'ctrl')
class RecipeBookController {
RecipeBookController(this._http, this.queryService) {
  }
