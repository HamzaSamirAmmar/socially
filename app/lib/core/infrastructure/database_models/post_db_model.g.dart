// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_db_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPostDbModelCollection on Isar {
  IsarCollection<PostDbModel> get postDbModels => this.collection();
}

const PostDbModelSchema = CollectionSchema(
  name: r'PostDbModel',
  id: -8106840600733282468,
  properties: {
    r'content': PropertySchema(
      id: 0,
      name: r'content',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'mediaStyle': PropertySchema(
      id: 2,
      name: r'mediaStyle',
      type: IsarType.byte,
      enumMap: _PostDbModelmediaStyleEnumValueMap,
    ),
    r'postType': PropertySchema(
      id: 3,
      name: r'postType',
      type: IsarType.byte,
      enumMap: _PostDbModelpostTypeEnumValueMap,
    ),
    r'tags': PropertySchema(
      id: 4,
      name: r'tags',
      type: IsarType.stringList,
    ),
    r'userId': PropertySchema(
      id: 5,
      name: r'userId',
      type: IsarType.long,
    )
  },
  estimateSize: _postDbModelEstimateSize,
  serialize: _postDbModelSerialize,
  deserialize: _postDbModelDeserialize,
  deserializeProp: _postDbModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'media': LinkSchema(
      id: -8753899665243216427,
      name: r'media',
      target: r'PostMediaDbModel',
      single: false,
    ),
    r'likes': LinkSchema(
      id: 2593377294043609216,
      name: r'likes',
      target: r'LikeDbModel',
      single: false,
    ),
    r'comments': LinkSchema(
      id: 3163057591903792016,
      name: r'comments',
      target: r'CommentDbModel',
      single: false,
    ),
    r'user': LinkSchema(
      id: 6295796678011352430,
      name: r'user',
      target: r'UserDbModel',
      single: true,
    )
  },
  embeddedSchemas: {},
  getId: _postDbModelGetId,
  getLinks: _postDbModelGetLinks,
  attach: _postDbModelAttach,
  version: '3.1.0+1',
);

int _postDbModelEstimateSize(
  PostDbModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.content.length * 3;
  bytesCount += 3 + object.tags.length * 3;
  {
    for (var i = 0; i < object.tags.length; i++) {
      final value = object.tags[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _postDbModelSerialize(
  PostDbModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.content);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeByte(offsets[2], object.mediaStyle.index);
  writer.writeByte(offsets[3], object.postType.index);
  writer.writeStringList(offsets[4], object.tags);
  writer.writeLong(offsets[5], object.userId);
}

PostDbModel _postDbModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PostDbModel(
    content: reader.readStringOrNull(offsets[0]) ?? '',
    createdAt: reader.readDateTime(offsets[1]),
    id: id,
    mediaStyle:
        _PostDbModelmediaStyleValueEnumMap[reader.readByteOrNull(offsets[2])] ??
            MediaStyle.stack,
    postType:
        _PostDbModelpostTypeValueEnumMap[reader.readByteOrNull(offsets[3])] ??
            PostType.post,
    tags: reader.readStringList(offsets[4]) ?? [],
    userId: reader.readLong(offsets[5]),
  );
  return object;
}

P _postDbModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset) ?? '') as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (_PostDbModelmediaStyleValueEnumMap[
              reader.readByteOrNull(offset)] ??
          MediaStyle.stack) as P;
    case 3:
      return (_PostDbModelpostTypeValueEnumMap[reader.readByteOrNull(offset)] ??
          PostType.post) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _PostDbModelmediaStyleEnumValueMap = {
  'stack': 0,
  'carousel': 1,
};
const _PostDbModelmediaStyleValueEnumMap = {
  0: MediaStyle.stack,
  1: MediaStyle.carousel,
};
const _PostDbModelpostTypeEnumValueMap = {
  'post': 0,
  'story': 1,
};
const _PostDbModelpostTypeValueEnumMap = {
  0: PostType.post,
  1: PostType.story,
};

Id _postDbModelGetId(PostDbModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _postDbModelGetLinks(PostDbModel object) {
  return [object.media, object.likes, object.comments, object.user];
}

void _postDbModelAttach(
    IsarCollection<dynamic> col, Id id, PostDbModel object) {
  object.id = id;
  object.media
      .attach(col, col.isar.collection<PostMediaDbModel>(), r'media', id);
  object.likes.attach(col, col.isar.collection<LikeDbModel>(), r'likes', id);
  object.comments
      .attach(col, col.isar.collection<CommentDbModel>(), r'comments', id);
  object.user.attach(col, col.isar.collection<UserDbModel>(), r'user', id);
}

extension PostDbModelQueryWhereSort
    on QueryBuilder<PostDbModel, PostDbModel, QWhere> {
  QueryBuilder<PostDbModel, PostDbModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PostDbModelQueryWhere
    on QueryBuilder<PostDbModel, PostDbModel, QWhereClause> {
  QueryBuilder<PostDbModel, PostDbModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<PostDbModel, PostDbModel, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterWhereClause> idBetween(
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

extension PostDbModelQueryFilter
    on QueryBuilder<PostDbModel, PostDbModel, QFilterCondition> {
  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> contentEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      contentGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> contentLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> contentBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'content',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> contentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> contentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
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

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
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

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
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

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      mediaStyleEqualTo(MediaStyle value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaStyle',
        value: value,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      mediaStyleGreaterThan(
    MediaStyle value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaStyle',
        value: value,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      mediaStyleLessThan(
    MediaStyle value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaStyle',
        value: value,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      mediaStyleBetween(
    MediaStyle lower,
    MediaStyle upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaStyle',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> postTypeEqualTo(
      PostType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'postType',
        value: value,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      postTypeGreaterThan(
    PostType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'postType',
        value: value,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      postTypeLessThan(
    PostType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'postType',
        value: value,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> postTypeBetween(
    PostType lower,
    PostType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'postType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tags',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tags',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> userIdEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      userIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> userIdLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> userIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PostDbModelQueryObject
    on QueryBuilder<PostDbModel, PostDbModel, QFilterCondition> {}

extension PostDbModelQueryLinks
    on QueryBuilder<PostDbModel, PostDbModel, QFilterCondition> {
  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> media(
      FilterQuery<PostMediaDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'media');
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      mediaLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'media', length, true, length, true);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> mediaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'media', 0, true, 0, true);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      mediaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'media', 0, false, 999999, true);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      mediaLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'media', 0, true, length, include);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      mediaLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'media', length, include, 999999, true);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      mediaLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'media', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> likes(
      FilterQuery<LikeDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'likes');
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      likesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'likes', length, true, length, true);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> likesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'likes', 0, true, 0, true);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      likesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'likes', 0, false, 999999, true);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      likesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'likes', 0, true, length, include);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      likesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'likes', length, include, 999999, true);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      likesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'likes', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> comments(
      FilterQuery<CommentDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'comments');
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      commentsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'comments', length, true, length, true);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      commentsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'comments', 0, true, 0, true);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      commentsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'comments', 0, false, 999999, true);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      commentsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'comments', 0, true, length, include);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      commentsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'comments', length, include, 999999, true);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition>
      commentsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(
          r'comments', lower, includeLower, upper, includeUpper);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> user(
      FilterQuery<UserDbModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'user');
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterFilterCondition> userIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.linkLength(r'user', 0, true, 0, true);
    });
  }
}

extension PostDbModelQuerySortBy
    on QueryBuilder<PostDbModel, PostDbModel, QSortBy> {
  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> sortByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> sortByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> sortByMediaStyle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaStyle', Sort.asc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> sortByMediaStyleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaStyle', Sort.desc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> sortByPostType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postType', Sort.asc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> sortByPostTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postType', Sort.desc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension PostDbModelQuerySortThenBy
    on QueryBuilder<PostDbModel, PostDbModel, QSortThenBy> {
  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> thenByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> thenByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> thenByMediaStyle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaStyle', Sort.asc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> thenByMediaStyleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mediaStyle', Sort.desc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> thenByPostType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postType', Sort.asc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> thenByPostTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'postType', Sort.desc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension PostDbModelQueryWhereDistinct
    on QueryBuilder<PostDbModel, PostDbModel, QDistinct> {
  QueryBuilder<PostDbModel, PostDbModel, QDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QDistinct> distinctByMediaStyle() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mediaStyle');
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QDistinct> distinctByPostType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'postType');
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QDistinct> distinctByTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tags');
    });
  }

  QueryBuilder<PostDbModel, PostDbModel, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }
}

extension PostDbModelQueryProperty
    on QueryBuilder<PostDbModel, PostDbModel, QQueryProperty> {
  QueryBuilder<PostDbModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PostDbModel, String, QQueryOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<PostDbModel, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<PostDbModel, MediaStyle, QQueryOperations> mediaStyleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mediaStyle');
    });
  }

  QueryBuilder<PostDbModel, PostType, QQueryOperations> postTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'postType');
    });
  }

  QueryBuilder<PostDbModel, List<String>, QQueryOperations> tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tags');
    });
  }

  QueryBuilder<PostDbModel, int, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
