
class Blog {
  String image;
  String title;
  String description;

  Blog({required this.image, required this.title, required this.description});
}

abstract interface class UseCase<P,Q> {}