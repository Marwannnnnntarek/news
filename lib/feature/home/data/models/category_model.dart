class CategoryModel {
  final String name, image;

  CategoryModel({required this.name, required this.image});
}

final List<CategoryModel> categories = [
  CategoryModel(name: 'Technology', image: 'assets/images/technology.jpeg'),
  CategoryModel(name: 'Sports', image: 'assets/images/sports.avif'),
  CategoryModel(name: 'Health', image: 'assets/images/health.avif'),
  CategoryModel(name: 'Business', image: 'assets/images/business.avif'),
  CategoryModel(
    name: 'Entertainment',
    image: 'assets/images/entertaiment.avif',
  ),
  CategoryModel(name: 'General', image: 'assets/images/general.avif'),
  CategoryModel(name: 'Science', image: 'assets/images/science.avif'),
];
