/// Utility class for formatting date and time in a human-readable format.
///
/// This class provides static methods to format dates in various ways,
/// such as "time ago" format (e.g., "2h ago", "3d ago").
class DateTimeFormatter {
  const DateTimeFormatter._();

  /// Formats a [DateTime] into a human-readable "time ago" string.
  ///
  /// Examples:
  /// - "Just now" for less than a minute ago
  /// - "5m ago" for minutes
  /// - "2h ago" for hours
  /// - "3d ago" for days less than a week
  /// - "dd/mm/yyyy" for dates more than a week old
  static String timeAgo(DateTime dateTime) {
    final difference = DateTime.now().difference(dateTime);

    if (difference.inDays > 7) {
      return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} d ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} h ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} m ago';
    } else {
      return 'Just now';
    }
  }
}
