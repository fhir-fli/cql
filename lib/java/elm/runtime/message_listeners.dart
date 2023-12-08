import 'dart:convert';

abstract class MessageListener {}

class NullMessageListener extends MessageListener {
  void onMessage(dynamic source, String code, String severity, String message) {
    // do nothing
  }
}

class ConsoleMessageListener extends MessageListener {
  final bool logSourceOnTrace;

  ConsoleMessageListener({this.logSourceOnTrace = false});

  void onMessage(dynamic source, String code, String severity, String message) {
    final printFunction = severity == 'Error'
        ? (String msg) => print(msg)
        : (String msg) => print(msg);
    var content = '$severity: [$code] $message';
    if (severity == 'Trace' && logSourceOnTrace) {
      content += '\n<<<<< SOURCE:\n${json.encode(source)}\n>>>>>';
    }
    printFunction(content);
  }
}
