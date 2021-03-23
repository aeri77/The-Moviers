import 'package:flutter_modular/flutter_modular.dart';
import 'package:the_moviers/config/constants.dart';
import 'package:the_moviers/page/detail_page/view/detail_page_view.dart';
import 'package:the_moviers/page/home_page/view/home_page_view.dart';

class AppModule extends Module {
  // Provide a list of dependencies to inject into your project
  @override
  final List<Bind> binds = [];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Constants.ROOT_PAGE, child: (_,__) => MyHomePage(title: 'Flutter Demo Home Page',)),
    ChildRoute(Constants.DETAIL_PAGE, child: (_, args) => DetailPage())
  ];
}
