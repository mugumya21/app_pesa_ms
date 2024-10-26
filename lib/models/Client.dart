class Client {
  final int id;
  final String name;
  final String address;

  Client({
    required this.id,
    required this.name,
    required this.address,

  });

  factory Client.fromJson(Map<String, dynamic> json){
    return switch (json){
      { 'id' : int id,
      'name' : String name,
      'address' : String address,
      } =>
          Client(
              id: id,
              name: name,
              address: address
          ),
      _ => throw const FormatException('Failed to load album'),

    };
  }
}