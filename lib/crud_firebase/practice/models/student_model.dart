class StudentModel {
  int age;
  String gender;
  int id;
  String major;
  String name;
  String image;

  StudentModel({
    required this.age,
    required this.gender,
    required this.id,
    required this.major,
    required this.name,
    required this.image,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
    age: json["age"] ?? 0,
    gender: json["gender"] ?? "",
    id: json["id"] ?? 0,
    major: json["major"] ?? "",
    name: json["name"] ?? "",
    image: json["image"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "age": age,
    "gender": gender,
    "id": id,
    "major": major,
    "name": name,
    "image": image,
  };
}
