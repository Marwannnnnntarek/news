class CategoryModel {
  final String name, image, id;

  CategoryModel({required this.id, required this.name, required this.image});
}

final List<CategoryModel> categories = [
  CategoryModel(
    name: 'General',
    image: 'assets/images/general.avif',
    id: 'other',
  ),
  CategoryModel(
    name: 'Sports',
    image: 'assets/images/sports.avif',
    id: 'sports',
  ),
  CategoryModel(
    name: 'Technology',
    image: 'assets/images/technology.jpeg',
    id: 'technology',
  ),

  CategoryModel(
    name: 'Health',
    image: 'assets/images/health.avif',
    id: 'health',
  ),
  CategoryModel(
    name: 'Business',
    image: 'assets/images/business.avif',
    id: 'business',
  ),
  CategoryModel(
    name: 'Entertainment',
    image: 'assets/images/entertaiment.avif',
    id: 'entertainment',
  ),

  CategoryModel(
    name: 'Science',
    image: 'assets/images/science.avif',
    id: 'science',
  ),
];
