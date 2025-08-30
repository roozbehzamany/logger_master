class ExampleModel {
  final int id;
  final String name;

  ExampleModel({required this.id, required this.name});

  @override
  String toString() {
    return 'ExampleModel(id: $id, name: $name)';
  }
}