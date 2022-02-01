class WpConfig {


  // YOUR WEBSITE URL
  static const String websiteUrl = "https://howdoigetweed.com";

  // CREDENTIALS
  static const String websiteAdminName = 'cortez@dmvwebguys.com';
  static const String websiteAdminPassword = "1dmvwebguys";
  

  //FEATURE TAG ID
  static const int featuredTagID = 1157;

  //VIDEO TAG ID
  static const int videoTagId = 33345;


  

  // Hometab 4 categories
  // -- 'Serial Number' : [Category Id, 'Category Name'] -- Length should be 4.
  static const Map selectedCategories = {
    '1': [118, "Marijuana News"],
    '2': [493, "Weed Reviews"],
    '3': [113, "Guides"],
    '4': [1290, "Video Strain Reviews"],
  };


  /*
  List of blocked categories. Do nothing if you don't want to block any categories.
  If you want to bloc any category and it's posts then enter values like these:

  Example: If you want to block category id 10 & 12, then it will be look like this:

    static const String blockedCategoryIds = "10,12";
    static const String blockedCategoryIdsforPopularPosts = "-10,-12";

  */

  static const String blockedCategoryIds = "1";
  static const String blockedCategoryIdsforPopularPosts = "";


  

  // FEATURE IMAGE -  IF YOUR POSTS DON"T HAVE A FEATURE IMAGE
  static const String randomPostFeatureImage = "https://innov8tiv.com/wp-content/uploads/2017/10/blank-screen-google-play-store-1280x720.png";

  // FEATURE CATEGORY IMAGE -  IF YOU HAVEN'T DEFINE A COVER IMAGE FOR A CATEGORY IN THE LIST BELOW
  static const String randomCategoryThumbnail = "https://images.unsplash.com/photo-1494253109108-2e30c049369b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cmFuZG9tfGVufDB8MHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60";


  // ENTER CATEGORY ID AND ITS COVERS IMAGE
  static const Map categoryThumbnails = {
    // categoryID : 'category thumbnail url'
    118 : "https://howdoigetweed.com/wp-content/uploads/2021/08/Marijauna-WashingtonDC-News.jpeg",
    493 : "https://howdoigetweed.com/wp-content/uploads/2021/08/Weed-Review-Image.jpeg",
    113 : "https://howdoigetweed.com/wp-content/uploads/2021/08/Weed-Guide-image.jpeg",
    1290 : "https://howdoigetweed.com/wp-content/uploads/2021/08/Astro-World-Vid-Pic.png",
    34116 : "https://howdoigetweed.com/wp-content/uploads/2021/08/legal-in-va-now-2-medium.jpeg",
    34343 : "https://howdoigetweed.com/wp-content/uploads/2021/07/edibles-2-medium.jpg",
    34344 : "https://howdoigetweed.com/wp-content/uploads/2022/01/About-Us-scaled-medium.jpg",
    33716 : "https://howdoigetweed.com/wp-content/uploads/2021/08/Featured-Image.jpeg",
    33861 : "https://howdoigetweed.com/wp-content/uploads/2020/11/Medical-Medicinal-medium.jpg",
  };
}