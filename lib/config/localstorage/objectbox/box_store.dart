import 'dart:io';

import 'package:objectbox/objectbox.dart';
import 'package:path_provider/path_provider.dart';

import '../../../objectbox.g.dart';

/// @author Aeri created on 3/24/2021

class BoxStore{
  static Future<Store> getStore() async {
    Directory dir = await getApplicationDocumentsDirectory();
    return Store(getObjectBoxModel(), directory: dir.path + '/objectbox');
  }
}
