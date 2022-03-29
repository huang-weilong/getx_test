class Basic {
  String? name;
  int? age;

  Basic({
    this.name,
    this.age,
  });

  Basic.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];
}
