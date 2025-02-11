import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Represents a table join configuration.
class TableJoin {
  /// The name of the relation/table to join.
  final String relationName;

  /// The columns to select from the joined table.
  /// If null, selects all columns (*).
  final String? columns;

  /// Additional nested joins for this relation.
  final List<TableJoin>? nestedJoins;

  const TableJoin({required this.relationName, this.columns, this.nestedJoins});

  /// Converts the join configuration to a Supabase select string.
  String toSelectString() {
    final columnsStr = columns ?? '*';
    if (nestedJoins == null || nestedJoins!.isEmpty) {
      return '$relationName($columnsStr)';
    }

    final nestedJoinsStr = nestedJoins!
        .map((join) => join.toSelectString())
        .join(',');

    return '$relationName($columnsStr,$nestedJoinsStr)';
  }
}

/// Base class for remote data sources using Supabase.
///
/// This class provides a foundation for implementing remote data operations using Supabase.
/// It includes methods for performing various database operations with support for table joins
/// and complex queries.
abstract class BaseRemoteDatasource {
  /// Fetches data from a table with optional joins and filters.
  ///
  /// [T] The type of model to return
  /// [table] The name of the table to query from.
  /// [fromJson] Function to create model instance from JSON.
  /// [joins] Optional list of table joins to include in the query.
  /// [columns] Specific columns to select, defaults to all (*).
  /// [filters] Optional function to apply additional query filters.
  /// Returns a Future with the query results as a list of type [T].
  Future<List<T>> getData<T>({
    required String table,
    required T Function(Map<String, dynamic>) fromJson,
    List<TableJoin>? joins,
    String columns = '*',
    Map<String, dynamic>? filters,
  });

  /// Counts records in a table with optional filters.
  ///
  /// [table] The name of the table to count records from.
  /// [filters] Optional function to apply additional query filters.
  /// Returns a Future with the count of records.
  Future<int> getCount({
    required String table,
    void Function(PostgrestFilterBuilder)? filters,
  });
}

/// Implementation of [BaseRemoteDatasource] using Supabase client.
@LazySingleton(as: BaseRemoteDatasource)
class BaseRemoteDataSourceImpl extends BaseRemoteDatasource {
  final SupabaseClient _supabaseClient;

  BaseRemoteDataSourceImpl({required SupabaseClient supabaseClient})
    : _supabaseClient = supabaseClient;

  @override
  @protected
  Future<List<T>> getData<T>({
    required String table,
    required T Function(Map<String, dynamic>) fromJson,
    List<TableJoin>? joins,
    String columns = '*',
    Map<String, dynamic>? filters, // Updated: Using a map for filters
  }) async {
    try {
      // Build the select string with joins
      String select = columns;
      if (joins != null && joins.isNotEmpty) {
        final joinsStr = joins.map((j) => j.toSelectString()).join(',');
        select = '$columns,$joinsStr';
      }

      // Start building the query
      var query = _supabaseClient.from(table).select(select);

      // Apply filters if provided
      if (filters != null) {
        filters.forEach((key, value) {
          if (value is List) {
            query = query.inFilter(key, value); // For list filters
          } else {
            query = query.eq(key, value); // For single-value filters
          }
        });
      }
      // Execute the query and convert results to model instances
      final response = await query;

      return List<Map<String, dynamic>>.of(
        response,
      ).map((json) => fromJson(json)).toList();
    } catch (e) {
      // Rethrow the error to be handled by the repository layer
      rethrow;
    }
  }

  @override
  @protected
  Future<int> getCount({
    required String table,
    void Function(PostgrestFilterBuilder)? filters,
  }) async {
    try {
      var query = _supabaseClient.from(table).count();

      if (filters != null) {
        filters(query);
      }

      return await query;
    } catch (e) {
      rethrow;
    }
  }
}
