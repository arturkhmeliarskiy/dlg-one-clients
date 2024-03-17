export 'src/file_manager_stub.dart'
    if (dart.library.html) 'src/file_manager_html_impl.dart'
    if (dart.library.io) 'src/file_manager_io_impl.dart';
