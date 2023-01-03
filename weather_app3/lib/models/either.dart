abstract class Either<L, R> {
  Either._();

  factory Either.left(L value) = Left._;

  factory Either.right(R value) = Right._;

  void fold(void Function(L) l, void Function(R) r) {
    if (runtimeType == Left<L, R>) {
      l((this as Left<L, R>).value);
    } else {
      r((this as Right<L, R>).value);
    }
  }
}

class Left<L, R> extends Either<L, R> {
  final L value;

  Left._(this.value) : super._();
}

class Right<L, R> extends Either<L, R> {
  final R value;

  Right._(this.value) : super._();
}