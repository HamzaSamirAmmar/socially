// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_media_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPostMediaDbModelCollection on Isar {
  IsarCollection<PostMediaDbModel> get postMediaDbModels => this.collection();
}

const PostMediaDbModelSchema = CollectionSchema(
  name: r'PostMediaDbModel',
  id: -4641383219487241418,
  properties: {
    r'createdAt': PropertySchema(
      id: 0,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'mediaType': PropertySchema(
      id: 1,
      name: r'mediaType',
      type: IsarType.byte,
      enumMap: _PostMediaDbModelmediaTypeEnumValueMap,
    ),
    r'mediaTypeString': PropertySchema(
      id: 2,
      name: r'mediaTypeString',
      type: IsarType.string,
    ),
    r'mediaUrl': PropertySchema(
      id: 3,
      name: r'mediaUrl',
      type: IsarType.string,
    )
  },
  estimateSize: _postMediaDbModelEstimateSize,
  serialize: _postMediaDbModelSerialize,
  deserialize: _postMediaDbModelDeserialize,
  deserializeProp: _postMediaDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'post': LinkSchema(
      id: -7296581301998797071,
      name: r'post',
      target: r'PostDbModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _postMediaDbModelGetId,
  getLinks: _postMediaDbModelGetLinks,
  attach: _postMediaDbModelAttach,
  version: '3.1.0+1',
);

int _postMediaDbModelEstimateSize(
  PostMediaDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.mediaTypeString.length * 3;
  bytesCount += 3 + object.mediaUrl.length * 3;
  return bytesCount;
}

void _postMediaDbModelSerialize(
  PostMediaDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.createdAt);
  writer.writeByte(offsets[1], object.mediaType.index);
  writer.writeString(offsets[2], object.mediaTypeString);
  writer.writeString(offsets[3], object.mediaUrl);
}

PostMediaDbModel _postMediaDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PostMediaDbModel(
    createdAt: reader.readDateTime(offsets[0]),
    id: id,
    mediaType: _PostMediaDbModelmediaTypeValueEnumMap[
            reader.readByteOrNull(offsets[1])] ??
        MediaType.image,
    mediaUrl: reader.readString(offsets[3]),
  );
  return object;
}

P _postMediaDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (_PostMediaDbModelmediaTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          MediaType.image) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _PostMediaDbModelmediaTypeEnumValueMap = {
  'image': 0,
  'video': 1,
};
const _PostMediaDbModelmediaTypeValueEnumMap = {
  0: MediaType.image,
  1: MediaType.video,
};

Id _postMediaDbModelGetId(PostMediaDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _postMediaDbModelGetLinks(PostMediaDbModel object) {
  return [object.post];
}

void _postMediaDbModelAttach(
    IsarCollection<dynamic> col, Id id, PostMediaDbModel object) {
  object.id = id;
  object.post.attach(col, col.isar.collection<PostDbModel>(), r'post', id);
}

extension PostMediaDbModelQueryWhereSort
    on QueryBuilder<PostMediaDbModel, PostMediaDbModel, QWhere> {
  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PostMediaDbModelQueryWhere
    on QueryBuilder<PostMediaDbModel, PostMediaDbModel, QWhereClause> {
  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterWhereClause> idBetween(
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

extension PostMediaDbModelQueryFilter
    on QueryBuilder<PostMediaDbModel, PostMediaDbModel, QFilterCondition> {
  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
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

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
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

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
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

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeEqualTo(MediaType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaType',
        value: value,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeGreaterThan(
    MediaType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaType',
        value: value,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeLessThan(
    MediaType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaType',
        value: value,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeBetween(
    MediaType lower,
    MediaType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeStringEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaTypeString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeStringGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaTypeString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeStringLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaTypeString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeStringBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaTypeString',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeStringStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mediaTypeString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeStringEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mediaTypeString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeStringContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mediaTypeString',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeStringMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mediaTypeString',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeStringIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaTypeString',
        value: '',
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaTypeStringIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mediaTypeString',
        value: '',
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaUrlEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaUrlGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaUrlLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaUrlBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mediaUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mediaUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mediaUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mediaUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      mediaUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mediaUrl',
        value: '',
      ));
    });
  }
}

extension PostMediaDbModelQueryObject
    on QueryBuilder<PostMediaDbModel, PostMediaDbModel, QFilterCondition> {}

extension PostMediaDbModelQueryLinks
    on QueryBuilder<PostMediaDbModel, PostMediaDbModel, QFilterCondition> {
  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition> post(
      FilterQuery<PostDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'post');
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterFilterCondition>
      postIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'post', 0, true, 0, true);
    });
  }
}

extension PostMediaDbModelQuerySortBy
    on QueryBuilder<PostMediaDbModel, PostMediaDbModel, QSortBy> {
  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      sortByMediaType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaType', Sort.asc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      sortByMediaTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaType', Sort.desc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      sortByMediaTypeString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaTypeString', Sort.asc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      sortByMediaTypeStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaTypeString', Sort.desc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      sortByMediaUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaUrl', Sort.asc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      sortByMediaUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaUrl', Sort.desc);
    });
  }
}

extension PostMediaDbModelQuerySortThenBy
    on QueryBuilder<PostMediaDbModel, PostMediaDbModel, QSortThenBy> {
  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      thenByMediaType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaType', Sort.asc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      thenByMediaTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaType', Sort.desc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      thenByMediaTypeString() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaTypeString', Sort.asc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      thenByMediaTypeStringDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaTypeString', Sort.desc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      thenByMediaUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaUrl', Sort.asc);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QAfterSortBy>
      thenByMediaUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaUrl', Sort.desc);
    });
  }
}

extension PostMediaDbModelQueryWhereDistinct
    on QueryBuilder<PostMediaDbModel, PostMediaDbModel, QDistinct> {
  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QDistinct>
      distinctByMediaType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mediaType');
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QDistinct>
      distinctByMediaTypeString({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mediaTypeString',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PostMediaDbModel, PostMediaDbModel, QDistinct>
      distinctByMediaUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mediaUrl', caseSensitive: caseSensitive);
    });
  }
}

extension PostMediaDbModelQueryProperty
    on QueryBuilder<PostMediaDbModel, PostMediaDbModel, QQueryProperty> {
  QueryBuilder<PostMediaDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PostMediaDbModel, DateTime, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<PostMediaDbModel, MediaType, QQueryOperations>
      mediaTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mediaType');
    });
  }

  QueryBuilder<PostMediaDbModel, String, QQueryOperations>
      mediaTypeStringProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mediaTypeString');
    });
  }

  QueryBuilder<PostMediaDbModel, String, QQueryOperations> mediaUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mediaUrl');
    });
  }
}
