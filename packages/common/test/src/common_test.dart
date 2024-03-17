// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';

void main() {
  group('Common', () {
    test('can be instantiated', () {
      Map<int, int> findAndCountDuplicates(List<int> data) {
        return data.fold<Map<int, int>>(
          {},
          (previousValue, e) {
            previousValue[e] = (previousValue[e] ?? 0) + 1;
            return previousValue;
          },
        );
      }

      final data = [1, 2, 3, 4, 5, 6, 5, 3, 1];
      // Задача: написать функцию <findAndCountDuplicates> которая за один проход в функциональном стиле вернёт
      // результат: {1: 2, 2: 1, 3: 2, 4: 1, 5: 2, 6: 1}
      print(findAndCountDuplicates(data));

    });
  });
}
