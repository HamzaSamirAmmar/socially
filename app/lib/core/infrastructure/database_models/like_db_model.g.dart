// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLikeDbModelCollection on Isar {
  IsarCollection<LikeDbModel> get likeDbModels => this.collection();
}

const LikeDbModelSchema = CollectionSchema(
  name: r'LikeDbModel',
  id: -3796674027253387483,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _likeDbModelEstimateSize,
  serialize: _likeDbModelSerialize,
  deserialize: _likeDbModelDeserialize,
  deserializeProp: _likeDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'post': LinkSchema(
      id: -8427152341048603964,
      name: r'post',
      target: r'PostDbModel',
      single: true,
    ),
    r'user': LinkSchema(
      id: -996297260346213703,
      name: r'user',
      target: r'UserDbModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _likeDbModelGetId,
  getLinks: _likeDbModelGetLinks,
  attach: _likeDbModelAttach,
  version: '3.1.0+1',
);

int _likeDbModelEstimateSize(
  LikeDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _likeDbModelSerialize(
  LikeDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
}

LikeDbModel _likeDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LikeDbModel(
    createdAt: reader.readDateTime(offsets[0]),
    id: id,
  );
  return object;
}

P _likeDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _likeDbModelGetId(LikeDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _likeDbModelGetLinks(LikeDbModel object) {
  return [object.post, object.user];
}

void _likeDbModelAttach(
    IsarCollection<dynamic> col, Id id, LikeDbModel object) {
  object.id = id;
  object.post.attach(col, col.isar.collection<PostDbModel>(), r'post', id);
  object.user.attach(col, col.isar.collection<UserDbModel>(), r'user', id);
}

extension LikeDbModelQueryWhereSort
    on QueryBuilder<LikeDbModel, LikeDbModel, QWhere> {
  QueryBuilder<LikeDbModel, LikeDbModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LikeDbModelQueryWhere
    on QueryBuilder<LikeDbModel, LikeDbModel, QWhereClause> {
  QueryBuilder<LikeDbModel, LikeDbModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LikeDbModelQueryFilter
    on QueryBuilder<LikeDbModel, LikeDbModel, QFilterCondition> {
  QueryBuilder<LikeDbModel, LikeDbModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LikeDbModelQueryObject
    on QueryBuilder<LikeDbModel, LikeDbModel, QFilterCondition> {}

extension LikeDbModelQueryLinks
    on QueryBuilder<LikeDbModel, LikeDbModel, QFilterCondition> {
  QueryBuilder<LikeDbModel, LikeDbModel, QAfterFilterCondition> post(
      FilterQuery<PostDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'post');
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterFilterCondition> postIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'post', 0, true, 0, true);
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterFilterCondition> user(
      FilterQuery<UserDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'user');
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterFilterCondition> userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'user', 0, true, 0, true);
    });
  }
}

extension LikeDbModelQuerySortBy
    on QueryBuilder<LikeDbModel, LikeDbModel, QSortBy> {
  QueryBuilder<LikeDbModel, LikeDbModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }
}

extension LikeDbModelQuerySortThenBy
    on QueryBuilder<LikeDbModel, LikeDbModel, QSortThenBy> {
  QueryBuilder<LikeDbModel, LikeDbModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LikeDbModel, LikeDbModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension LikeDbModelQueryWhereDistinct
    on QueryBuilder<LikeDbModel, LikeDbModel, QDistinct> {
  QueryBuilder<LikeDbModel, LikeDbModel, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }
}

extension LikeDbModelQueryProperty
    on QueryBuilder<LikeDbModel, LikeDbModel, QQueryProperty> {
  QueryBuilder<LikeDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LikeDbModel, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }
}
