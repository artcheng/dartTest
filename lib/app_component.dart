import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'src/route_paths.dart' as paths;
import 'src/routes.dart';
import 'package:chartjs/chartjs.dart';
import 'dart:html';
import 'dart:math' as math;



// AngularDart info: https://webdev.dartlang.org/angular
// Components info: https://webdev.dartlang.org/components

@Component(
  selector: 'my-app',
  styleUrls: ['app_component.css'],
  template: '''
      <h1>{{title}}</h1>
      <nav>
      <a [routerLink]="routes.test.toUrl()"
         routerLinkActive="active">Test</a>
       <a [routerLink]="routes.todolist.toUrl()"
         routerLinkActive="active">To Do List</a>  
      </nav>
   

      
         <router-outlet [routes]="routes.all"></router-outlet>
      
  ''',
  directives: [coreDirectives, routerDirectives],
  providers: [
    const ClassProvider(Routes),
  ],
)

class AppComponent implements AfterContentInit, AfterViewInit {
  final title="My App";

  final Routes routes;
  AppComponent(this.routes);


  @override
  void ngAfterContentInit() {
    // TODO: implement ngAfterContentInit
  }

  @override
  void ngAfterViewInit() {

  }

}
