import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'route_paths.dart' as paths;

import 'test_component.template.dart' as tc;
import 'todo_list/todo_list_component.template.dart' as tdl;

@Injectable()
class Routes {
  static final _test = new RouteDefinition(
    routePath: paths.test,
    component: tc.TestComponentNgFactory,
  );
  RouteDefinition get test => _test;
  static final _todolist = new RouteDefinition(
    routePath: paths.todolist,
    component: tdl.TodoListComponentNgFactory,
  );

  RouteDefinition get todolist => _todolist;

  final List<RouteDefinition> all = [
    _test,
    _todolist,
  ];
}