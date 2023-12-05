enum Direction {
  asc,
  ascending,
  desc,
  descending,
}

List removeNulls(List<dynamic> things) {
  return things.where((x) => x != null).toList();
}

List numericalSort(List<dynamic> things, Direction? direction) {
  return things
    ..sort((a, b) {
      if (direction == null || direction == 'asc' || direction == 'ascending') {
        return (a - b).toInt();
      } else {
        return (b - a).toInt();
      }
    });
}

bool isNull(value) {
  return value == null;
}

bool typeIsArray(value) {
  return value is List;
}

bool allTrue(things) {
  if (typeIsArray(things)) {
    return (things as List).every((x) => x);
  } else {
    return things;
  }
}

bool anyTrue(things) {
  if (typeIsArray(things)) {
    return (things as List).any((x) => x);
  } else {
    return things;
  }
}

dynamic jsDate = DateTime;

String normalizeMillisecondsFieldInString(String string, String msString) {
  msString = normalizeMillisecondsField(msString);
  var parts = string.split('.');
  var timezoneSeparator = getTimezoneSeparatorFromString(parts.last);

  var timezoneField =
      parts.length > 1 ? parts.last.split(timezoneSeparator).last : '';
  return '${parts.first}.$msString$timezoneSeparator$timezoneField';
}

String normalizeMillisecondsField(String msString) {
  return (msString + '00').substring(0, 3);
}

String getTimezoneSeparatorFromString(String string) {
  if (string.contains('-')) {
    return '-';
  } else if (string.contains('+')) {
    return '+';
  } else {
    return '';
  }
}

typedef SortCompareFn<T> = Future<int> Function(T a, T b);

Future<List<T>> asyncMergeSort<T>(
    List<T> arr, SortCompareFn<T> compareFn) async {
  if (arr.length <= 1) {
    return arr;
  }

  final midpoint = (arr.length / 2).floor();

  final left = await asyncMergeSort(arr.sublist(0, midpoint), compareFn);
  final right = await asyncMergeSort(arr.sublist(midpoint), compareFn);

  return merge(left, right, compareFn);
}

Future<List<T>> merge<T>(
    List<T> left, List<T> right, SortCompareFn<T> compareFn) async {
  final sorted = <T>[];
  while (left.isNotEmpty && right.isNotEmpty) {
    if (await compareFn(left.first, right.first) <= 0) {
      sorted.add(left.removeAt(0));
    } else {
      sorted.add(right.removeAt(0));
    }
  }
  sorted.addAll(left);
  sorted.addAll(right);
  return sorted;
}
