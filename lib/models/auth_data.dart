import 'dart:convert';

class AuthData {
  final String name;
  final String imageUrl;
  
  AuthData({
    required this.name,
    required this.imageUrl,
  });

  AuthData copyWith({
    String? name,
    String? imageUrl,
  }) {
    return AuthData(
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  factory AuthData.fromMap(Map<String, dynamic> map) {
    return AuthData(
      name: map['name'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthData.fromJson(String source) => AuthData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AuthData(name: $name, imageUrl: $imageUrl)';

  @override
  bool operator ==(covariant AuthData other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.imageUrl == imageUrl;
  }

  @override
  int get hashCode => name.hashCode ^ imageUrl.hashCode;
}
