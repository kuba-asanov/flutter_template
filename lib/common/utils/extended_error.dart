sealed class ExtendedError {
  const ExtendedError();
}

class NoConnectionError extends ExtendedError {
  const NoConnectionError();
}

class ParseError extends ExtendedError {
  const ParseError({
    this.originalError,
    this.stackTrace,
  });

  final Object? originalError;
  final StackTrace? stackTrace;

  @override
  String toString() {
    if (originalError != null) {
      return 'ParseError: $originalError';
    }
    return 'ParseError: Unknown parsing error';
  }
}
