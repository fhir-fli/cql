import 'dart:collection';

class ArrayDeque<E> extends ListBase<E> implements Queue<E> {
  @override
  ArrayDeque<R> cast<R>() => ArrayDeque.fromIterable(_elements.cast<R>());

  List<E?> _elements;
  int _head = 0;
  int _tail = 0;
  static const int _maxArraySize = 2147483639;
  static const int _defaultCapacity = 16; // Assuming a default capacity

  // Default constructor
  ArrayDeque() : _elements = List<E?>.filled(_defaultCapacity, null);

  ArrayDeque.initialCapacity([int initialCapacity = 16])
      : _elements = List<E?>.filled(_calculateCapacity(initialCapacity), null,
            growable: false);

  // Named constructor for initializing from an Iterable
  ArrayDeque.fromIterable(Iterable<E> elements)
      : _elements = List<E?>.filled(elements.length, null) {
    int index = 0;
    for (E element in elements) {
      _elements[index++] = element;
    }
    _tail = elements.length;
  }

  // Named constructor for specifying initial capacity
  ArrayDeque.withCapacity(int numElements)
      : _elements = List<E?>.filled(numElements < 1 ? 1 : numElements, null);

  ArrayDeque.from(Iterable<E> other)
      : _elements = List<E?>.filled(_calculateCapacity(other.length), null,
            growable: false) {
    addAll(other);
  }

  static int _calculateCapacity(int numElements) {
    int capacity = numElements;
    if (numElements >= _maxArraySize) {
      return _maxArraySize;
    }
    // Ensure the capacity is a power of 2.
    capacity |= capacity >> 1;
    capacity |= capacity >> 2;
    capacity |= capacity >> 4;
    capacity |= capacity >> 8;
    capacity |= capacity >> 16;
    capacity++;
    return capacity > 16 ? capacity : 16;
  }

  @override
  void addFirst(E value) {
    _head = (_head - 1) & (_elements.length - 1);
    _elements[_head] = value;
    if (_head == _tail) _grow();
  }

  @override
  void addLast(E value) {
    _elements[_tail] = value;
    _tail = (_tail + 1) & (_elements.length - 1);
    if (_tail == _head) _grow();
  }

  @override
  void add(E element) => addLast(element);

  @override
  void clear() {
    _elements.fillRange(0, _elements.length, null);
    _head = _tail = 0;
  }

  @override
  Iterator<E> get iterator => _ArrayDequeIterator<E>(this);

  // This method is a simplified example of growing the internal storage.
  // It doubles the size of the array when needed.
  void _grow() {
    int newCapacity = _elements.length * 2;
    if (newCapacity > _maxArraySize) throw StateError("Deque too big");
    List<E?> newElements = List<E?>.filled(newCapacity, null);
    int split = _elements.length - _head;
    newElements.setRange(0, split, _elements, _head);
    newElements.setRange(split, split + _head, _elements, 0);
    _elements = newElements;
    _head = 0;
    _tail = newCapacity ~/ 2; // Adjust based on the actual number of elements
  }

  @override
  E removeFirst() {
    if (isEmpty || _elements[_head] == null) {
      throw StateError("Deque is empty");
    } else {
      E result = _elements[_head] as E;
      _elements[_head] = null; // Help GC
      _head = (_head + 1) & (_elements.length - 1);
      return result;
    }
  }

  @override
  E removeLast() {
    if (isEmpty) throw StateError("Deque is empty");
    _tail = (_tail - 1) & (_elements.length - 1);
    if (_elements[_tail] == null) {
      _tail = (_tail + 1) & (_elements.length - 1);
      throw StateError("Deque is empty");
    } else {
      E result = _elements[_tail] as E;
      _elements[_tail] = null; // Help GC
      return result;
    }
  }

  @override
  bool remove(Object? element) {
    for (int i = _head;; i = (i + 1) & (_elements.length - 1)) {
      if (_elements[i] == null) return false; // Reached the end
      if (_elements[i] == element) {
        _removeAt(i);
        return true;
      }
      if (i == _tail) break; // Back to start
    }
    return false;
  }

  void _removeAt(int index) {
    // This method needs careful implementation to maintain deque properties.
    // For simplicity, assume removing only from head or tail.
    if (index == _head) {
      _head = (_head + 1) % _elements.length;
    } else if (index == _tail) {
      _tail = (_tail - 1 + _elements.length) % _elements.length;
    } else {
      throw UnimplementedError(
          "Removing from the middle is not supported in this simplified version");
    }
    _elements[index] = null;
  }

  @override
  E get first => _elements[_head] ?? (throw StateError("Deque is empty"));

  @override
  E get last => _elements[_tail] ?? (throw StateError("Deque is empty"));

  @override
  bool get isEmpty => _head == _tail;

  @override
  int get length => (_tail - _head) & (_elements.length - 1);

  @override
  E operator [](int index) {
    if (index >= length || index < 0) throw RangeError.index(index, this);
    return _elements[(_head + index) & (_elements.length - 1)]!;
  }

  @override
  void operator []=(int index, E value) {
    if (index >= length || index < 0) throw RangeError.index(index, this);
    _elements[(_head + index) & (_elements.length - 1)] = value;
  }

  @override
  set length(int newLength) {
    throw UnsupportedError("Cannot set the length of a deque");
  }

  // Adapting Java's `removeIf` method to Dart
  @override
  bool removeWhere(bool Function(E element) test) {
    bool removed = false;
    int i = _head;
    while (i != _tail) {
      E? element = _elements[i];
      if (element != null && test(element)) {
        _removeAt(i); // This method needs to be implemented or adapted.
        removed = true;
      }
      i = (i + 1) % _elements.length;
    }
    return removed;
  }

  // Implementing `addAll` in Dart
  @override
  void addAll(Iterable<E> iterable) {
    for (E element in iterable) {
      addLast(element);
    }
  }

  // Implementing `contains` in Dart
  @override
  bool contains(Object? element) {
    int i = _head;
    while (i != _tail) {
      if (_elements[i] == element) return true;
      i = (i + 1) % _elements.length;
    }
    return false;
  }
}

class _ArrayDequeIterator<E> implements Iterator<E> {
  final ArrayDeque<E> _deque;
  int _index;
  int _lastRet = -1;

  _ArrayDequeIterator(this._deque) : _index = _deque._head;

  @override
  bool moveNext() {
    if (_index == _deque._tail) return false;
    _lastRet = _index;
    _index = (_index + 1) & (_deque._elements.length - 1);
    return true;
  }

  @override
  E get current => _deque._elements[_lastRet]!;
}
