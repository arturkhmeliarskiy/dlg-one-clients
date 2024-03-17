extension IterableExtension<T> on Iterable<T> {
  T? tryGet(int index) {
    if (isEmpty || index.isNegative || index > length - 1) {
      return null;
    }
    return elementAt(index);
  }
}
