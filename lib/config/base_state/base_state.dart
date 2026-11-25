class BaseState<T> {
  final bool isLoading;
  final String? errMsg;
  final T? data;

  BaseState({
    this.isLoading = false,
    this.errMsg,
    this.data,
  });

  BaseState<T> copyWith({
    bool? isLoading,
    String? errMsg,
    T? data,
    bool clearError = false,
    bool clearData = false,
  }) {
    return BaseState<T>(
      isLoading: isLoading ?? this.isLoading,
      errMsg: clearError ? null : errMsg ?? this.errMsg,
      data: clearData ? null : data ?? this.data,
    );
  }
}