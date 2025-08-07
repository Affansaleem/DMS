import 'package:dms/core/dependency/service_locator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'app.dart';

void main(){
  setUrlStrategy(PathUrlStrategy());
  setupLocator();
  runApp(App());
}
