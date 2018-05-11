import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'route_paths.dart' as paths;
import 'package:chartjs/chartjs.dart';
import 'dart:html';
import 'dart:math' as math;



@Component(
  selector: 'my-test',
  styleUrls: ['test_component.css'],
  templateUrl: 'test_component.html',
  directives: [coreDirectives, ],
)

class TestComponent implements OnActivate, AfterContentInit, AfterViewInit {

  math.Random rnd = new math.Random();
  List<String> months = <String>[
    "January", "February", "March", "April", "May", "June"];

  @override
  void ngAfterContentInit() {
    // TODO: implement ngAfterContentInit

  }

  @override
  void ngAfterViewInit() {


  }

  @override
  void onActivate(RouterState previous, RouterState current) {
    querySelector('#Rip').text = "HAHAHA";

    var data = new LinearChartData(labels: months, datasets: <ChartDataSets>[
      new ChartDataSets(
          label: 'My 1st dataset',
          backgroundColor: 'rgba(220,220,220,0.2)',
          data: months.map((_) => rnd.nextInt(100)).toList()),
      new ChartDataSets(
          label: 'My 2nd dataset',
          backgroundColor: 'rgba(151,187,205,0.2)',
          data: months.map((_) => rnd.nextInt(100)).toList())
    ]);

    var config = new ChartConfiguration(
        type: 'line', data: data, options: new ChartOptions(responsive: true));

    new Chart(querySelector('#canvas') as CanvasElement, config);
  }


}