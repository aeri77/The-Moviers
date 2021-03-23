import 'package:objectbox/objectbox.dart';

/// @author Aeri created on 3/24/2021
/// after add entity please run 'flutter pub run build_runner build'
  
@Entity()
class User{
  int id;
  String name;
}