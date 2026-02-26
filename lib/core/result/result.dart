sealed class Result<T> {
  const Result();

  factory Result.ok(T value) = Ok<T>;
  factory Result.error(String message) = Error<T>;

  bool get isError => this is Error<T>;
  bool get isOk => this is Ok<T>;

  T? get getValue {
    if (this is Ok<T>) {
      return (this as Ok<T>).value;
    }
    return null;
  }

  Error? get getError {
    if (isError) {
      return (this as Error<T>);
    }
    return null;
  }
}

class Ok<T> extends Result<T> {
  const Ok(this.value);

  final T value;
}

class Error<T> extends Result<T> {
  final String message;
  const Error(this.message);
}
