import 'dart:typed_data';

Future<List<double>> pseudoSpec(Uint8List? bytes) async {
  const samples = 64;
  final spec = <double>[]; // псевдо спек
  // Uint8List? bytes = kIsWeb ? file.data : await file.file.readAsBytes();
  if ((bytes?.length ?? 0) / samples > samples) {
    final l = bytes!.length ~/ samples;
    for (var i = 0; i < samples; i++) {
      spec.add(bytes[i * l] / 256);
    }
  }
  return spec;
}
