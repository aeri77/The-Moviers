// GENERATED CODE - DO NOT MODIFY BY HAND

// Currently loading model from "JSON" which always encodes with double quotes
// ignore_for_file: prefer_single_quotes
// ignore_for_file: camel_case_types

import 'dart:typed_data';

import 'package:objectbox/objectbox.dart';
import 'package:objectbox/flatbuffers/flat_buffers.dart' as fb;
export 'package:objectbox/objectbox.dart'; // so that callers only have to import this file
import 'package:objectbox/internal.dart'; // generated code can access "internal" functionality
import 'config/localstorage/database/user_db.dart';

ModelDefinition getObjectBoxModel() {
  final model = ModelInfo.fromMap({
    "entities": [
      {
        "id": "1:5907979613328719491",
        "lastPropertyId": "2:7885138961382014252",
        "name": "User",
        "properties": [
          {
            "id": "1:7568181355079444274",
            "name": "id",
            "type": 6,
            "flags": 1,
            "dartFieldType": "int?"
          },
          {
            "id": "2:7885138961382014252",
            "name": "name",
            "type": 9,
            "dartFieldType": "String?"
          }
        ],
        "relations": [],
        "backlinks": [],
        "constructorParams": [],
        "nullSafetyEnabled": false
      }
    ],
    "lastEntityId": "1:5907979613328719491",
    "lastIndexId": "0:0",
    "lastRelationId": "0:0",
    "lastSequenceId": "0:0",
    "modelVersion": 5
  }, check: false);

  final bindings = <Type, EntityDefinition>{};
  bindings[User] = EntityDefinition<User>(
      model: model.getEntityByUid(5907979613328719491),
      toOneRelations: (User object) => [],
      toManyRelations: (User object) => {},
      getId: (User object) => object.id,
      setId: (User object, int id) {
        object.id = id;
      },
      objectToFB: (User object, fb.Builder fbb) {
        final offsetname =
            object.name == null ? null : fbb.writeString(object.name);
        fbb.startTable(3);
        fbb.addInt64(0, object.id ?? 0);
        fbb.addOffset(1, offsetname);
        fbb.finish(fbb.endTable());
        return object.id ?? 0;
      },
      objectFromFB: (Store store, Uint8List fbData) {
        final buffer = fb.BufferContext.fromBytes(fbData);
        final rootOffset = buffer.derefObject(0);

        final object = User()
          ..id = fb.Int64Reader().vTableGetNullable(buffer, rootOffset, 4)
          ..name = fb.StringReader().vTableGetNullable(buffer, rootOffset, 6);

        return object;
      });

  return ModelDefinition(model, bindings);
}

class User_ {
  static final id =
      QueryIntegerProperty(entityId: 1, propertyId: 1, obxType: 6);
  static final name =
      QueryStringProperty(entityId: 1, propertyId: 2, obxType: 9);
}
