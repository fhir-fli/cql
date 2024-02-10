abstract class Deque<E> {
  void addFirst(E value);
  void addLast(E value);
  bool offerFirst(E value);
  bool offerLast(E value);
  E removeFirst();
  E removeLast();
  E? pollFirst();
  E? pollLast();
  E getFirst();
  E getLast();
  E? peekFirst();
  E? peekLast();
  bool removeFirstOccurrence(Object value);
  bool removeLastOccurrence(Object value);
  bool add(E value);
  bool offer(E value);
  E remove();
  E? poll();
  E element();
  E peek();
  bool addAll(Iterable<E> values);
  void push(E value);
  E pop();
  bool contains(Object value);
  int size();
  Iterator<E> iterator();
  Iterator<E> descendingIterator();
}
