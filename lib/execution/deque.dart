import 'dart:collection';

class Deque<E> extends ListBase<E> {
  final List<E> _list = [];

  // Implement required List methods
  @override
  int get length => _list.length;

  @override
  set length(int newLength) {
    _list.length = newLength;
  }

  @override
  E operator [](int index) => _list[index];

  @override
  void operator []=(int index, E value) {
    _list[index] = value;
  }

  // Deque methods
  void addFirst(E value) => _list.insert(0, value);

  void addLast(E value) => _list.add(value);

  bool offerFirst(E value) {
    _list.insert(0, value);
    return true; // In Dart, inserting will always succeed unless out of memory
  }

  bool offerLast(E value) {
    _list.add(value);
    return true;
  }

  E removeFirst() => _list.removeAt(0);

  @override
  E removeLast() => _list.removeLast();

  E? pollFirst() => _list.isNotEmpty ? _list.removeAt(0) : null;

  E? pollLast() => _list.isNotEmpty ? _list.removeLast() : null;

  E getFirst() => _list.first;

  E getLast() => _list.last;

  E? peekFirst() => _list.isNotEmpty ? _list.first : null;

  E? peekLast() => _list.isNotEmpty ? _list.last : null;

  // The removeFirstOccurrence and removeLastOccurrence methods
  // are not directly supported by List, so we implement them manually.
  bool removeFirstOccurrence(E value) {
    var index = _list.indexOf(value);
    if (index != -1) {
      _list.removeAt(index);
      return true;
    }
    return false;
  }

  bool removeLastOccurrence(Object value) {
    for (var i = _list.length - 1; i >= 0; i--) {
      if (_list[i] == value) {
        _list.removeAt(i);
        return true;
      }
    }
    return false;
  }

  // Add, offer, remove, poll, element, and peek methods can use List's methods directly
  // or the methods we've already defined above.

  void push(E value) => addFirst(value);

  E pop() => removeFirst();

  // Methods like addAll, remove, contains, size, iterator, and descendingIterator
  // are supported through the ListBase and our internal _list.

  // Implement descendingIterator using Dart's features
  Iterable<E> get descendingIterable => _list.reversed;
}
