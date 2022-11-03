class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent(
      {required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(image: 'assets/images/logo.png', title: '', discription: ""),
  UnbordingContent(
      image: 'assets/images/product4.png',
      title: 'Nasaem',
      discription: "lorem ipsum dolor sit amet, consectetur"
          "adipiscing dlit, sed do eiusmod tempor"
          "incididunt ut labore et dolore"
          "magna aliqua."),
  UnbordingContent(
    title: 'Tajebni',
    discription: "lorem ipsum dolor sit amet, consectetur"
        "adipiscing dlit, sed do eiusmod tempor"
        "incididunt ut labore et dolore"
        "magna aliqua.",
    image: 'assets/images/product2.png',
  ),
  UnbordingContent(
    title: 'Amber',
    discription: "",
    image: 'assets/images/product3.png',
  ),
];
