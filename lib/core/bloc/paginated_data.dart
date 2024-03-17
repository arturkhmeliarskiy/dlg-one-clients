class PaginatedData<T extends Object> {
  const PaginatedData({
    required this.data,
    required this.number,
    required this.hasMore,
  });

  final List<T> data;

  final int number;

  final bool hasMore;
}
