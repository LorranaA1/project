class People {
  final String image;
  final String email;
  late String password;
  final String name;
  late String username;
  final String birthdate;


  People({
    required this.image,
    required this.email,
    required this.password,
    required this.name,
    required this.username,
    required this.birthdate,
  });

  People.fromJson(Map<String, dynamic> json, this.image, this.email, this.name, this.birthdate){
    password = json['password'];
    username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['username'] = username;
    data['password'] = password;
    return data;
  }
}