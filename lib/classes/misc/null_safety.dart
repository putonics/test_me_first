int intOf(dynamic val) {
  return (val ?? 0) as int;
}

String stringOf(dynamic val) {
  return (val ?? "") as String;
}

bool boolOf(dynamic val) {
  return (val ?? false) as bool;
}

List<T> listOf<T>(dynamic list) {
  return List<T>.from((list ?? []) as List<T>);
}

Map<String, dynamic> mapOf(dynamic x) {
  return (x ?? {}) as Map<String, dynamic>;
}
