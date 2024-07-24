abstract class DataState<S, F> {
  final S? data;
  final F? error;

  const DataState({
    this.data,
    this.error,
  });
}

class DataSuccess<S, F> extends DataState<S, F> {
  const DataSuccess(S data) : super(data: data);
}

class DataFailed<S, F> extends DataState<S, F> {
  const DataFailed(F error) : super(error: error);
}
