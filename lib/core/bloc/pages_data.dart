import 'package:collection/collection.dart';
import 'package:dls_one/core/bloc/paginated_data.dart';
import 'package:flutter/foundation.dart';

/// Модель, описывающая пагинированные данные.
@immutable
class PagesData<T extends Object> {
  /// Создание [PagesData] на основе входных [pages].
  ///
  /// Из [pages] создастся иммутабельный массив страниц.
  PagesData(
    List<PaginatedData<T>> pages,
  ) : pages = List.unmodifiable(pages);

  /// Весь список моделей из страниц [pages].
  Iterable<T> get data => pages.expand((page) => page.data);

  /// Количество страниц.
  int get count => pages.length;

  /// Есть ли в сторедже больше данных, которые можно подгрузить дополнительно.
  bool get hasMore => pages.lastOrNull?.hasMore ?? true;

  final List<PaginatedData<T>> pages;

  /// Создает новую модель, обогащенную данными из дополнительной [PaginatedData].
  /// [page] должна быть следующий по порядку.
  PagesData<T> applyPage(PaginatedData<T> page) {
    assert(
      page.number == count + 1,
      'Применяться должна следующая по счету страница',
    );

    return PagesData<T>(
      [...pages, page],
    );
  }
}
