import 'dart:async';
import 'dart:typed_data';

abstract class Closeable {
  Future<void> close();
}

abstract class Writer implements Closeable {
  static const int WRITE_BUFFER_SIZE = 1024;

  Object lock;
  Uint16List? writeBuffer;

  Writer() : lock = Object();

  Writer.withLock(this.lock);

  @override
  Future<void> close() async {
    throw UnimplementedError();
  }

  static Writer nullWriter() {
    return NullWriter();
  }

  void write(int c) {
    synchronized(lock, () {
      writeBuffer ??= Uint16List(1024);

      writeBuffer![0] = c;
      writeStringOffset(String.fromCharCode(c), 0, 1);
    });
  }

  void writeString(String str) {
    writeStringOffset(str, 0, str.length);
  }

  void writeStringOffset(String str, int offset, int length) {
    writeString(str.substring(offset, offset + length));
  }

  Writer append(Object? csq) {
    writeString(csq.toString());
    return this;
  }

  Writer appendRange(Object? csq, int start, int end) {
    var stringToAppend = csq?.toString() ?? 'null';
    writeStringOffset(stringToAppend, start, end - start);
    return this;
  }

  Writer appendChar(int c) {
    write(c);
    return this;
  }

  Future<void> flush() async {
    throw UnimplementedError();
  }
}

class NullWriter extends Writer {
  @override
  Future<void> close() async {}

  @override
  Future<void> flush() async {}

  @override
  void write(int c) {}
}

typedef void LockFunction();

void synchronized(Object lock, LockFunction function) {
  // Implementation of synchronized function...
}
