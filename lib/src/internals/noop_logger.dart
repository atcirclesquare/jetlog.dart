import 'package:structlog/src/field.dart' show Field;
import 'package:structlog/src/filter.dart';
import 'package:structlog/src/handler.dart';
import 'package:structlog/src/level.dart';
import 'package:structlog/src/logger.dart';
import 'package:structlog/src/interface.dart';
import 'package:structlog/src/record.dart';
import 'package:structlog/src/tracer.dart';
import 'package:structlog/src/internals/noop_tracer.dart';

class NoopLoggerImpl implements Logger {
  NoopLoggerImpl([this.name]);

  @override
  Level level;

  @override
  final String name;

  @override
  Interface bind(Iterable<Field> fields) => NoopLoggerImpl();

  @override
  bool isEnabledFor(Level level) => false;

  @override
  void addFilter(Filter filter) {}

  @override
  void removeFilter(Filter filter) {}

  @override
  void addHandler(Handler handler) {}

  @override
  void debug(String message) {}

  @override
  Tracer trace(String message) => NoopTracerImpl();

  @override
  void info(String message) {}

  @override
  void warning(String message) {}

  @override
  void danger(String message) {}

  @override
  void fatal(String message) {}

  @override
  bool filter(Record record) => false;

  @override
  void log(Level level, String message) {}

  @override
  String toString() {
    final buffer = StringBuffer();

    buffer
      ..write('<NoopLogger ')
      ..write('name=')
      ..write(name)
      ..write(', ')
      ..write('level=')
      ..write(level)
      ..write('>');

    return buffer.toString();
  }
}
