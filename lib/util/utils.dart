enum Direction { asc, ascending, desc, descending }

List removeNulls(List things) {
  return things.where((x) => x != null).toList();
}

bool isNull(value) {
  return value == null;
}

bool typeIsArray(value) => value is List;

dynamic allTrue(dynamic things) {
  if (typeIsArray(things)) {
    return (things as List).every((x) => x);
  } else {
    return things;
  }
}

dynamic anyTrue(dynamic things) {
  if (typeIsArray(things)) {
    return (things as List).any((x) => x);
  } else {
    return things;
  }
}

dynamic jsDate = DateTime;

String normalizeMillisecondsFieldInString(String string, String msString) {
  msString = normalizeMillisecondsField(msString);
  String? timezoneField;
  final splitString = string.split('.');
  final beforeMs = splitString[0];
  final msAndAfter = splitString.length > 1 ? splitString[1] : '';

  final timezoneSeparator = getTimezoneSeparatorFromString(msAndAfter);

  timezoneField = msAndAfter.split(timezoneSeparator)[1];

  return beforeMs + '.' + msString + timezoneSeparator + timezoneField;
}

String normalizeMillisecondsField(String msString) {
  return (msString + '00').substring(0, 3);
}

String getTimezoneSeparatorFromString(String? string) {
  if (string != null) {
    if (string.contains('-')) {
      return '-';
    } else if (string.contains('+')) {
      return '+';
    }
  }
  return '';
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
    if (await compareFn(left[0], right[0]) <= 0) {
      final sortedElem = left.removeAt(0);
      if (sortedElem != null) {
        sorted.add(sortedElem);
      }
    } else {
      final sortedElem = right.removeAt(0);
      if (sortedElem != null) {
        sorted.add(sortedElem);
      }
    }
  }
  return [...sorted, ...left, ...right];
}
