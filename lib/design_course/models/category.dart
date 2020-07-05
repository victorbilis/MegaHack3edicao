class Category {
  Category({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = 0,
    this.description = '',
    this.money = 0,
    this.pages,
    this.themes,
    this.rating_content = '',
    this.rating = 0.0,
  });

  String title;
  var pages;
  var themes; 
  int lessonCount;
  int money;
  double rating;
  String description;
  String rating_content;
  String imagePath;
}
