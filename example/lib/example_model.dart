/// A simple data model that holds an `id` and a `name`.
class ExampleModel {
  /// Unique identifier for the model.
  final int id;

  /// Name associated with the model.
  final String name;

  /// Creates an [ExampleModel] with a required [id] and [name].
  ExampleModel({required this.id, required this.name});

  /// Returns a string representation of the model.
  @override
  String toString() {
    return 'ExampleModel(id: $id, name: $name)';
  }
}
