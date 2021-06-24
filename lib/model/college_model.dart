class CollegeModel {
  String collegename;
  String url;

  CollegeModel({this.collegename, this.url});
  CollegeModel.fromJson(Map<String, dynamic> json) {
    collegename = json['name'];
    url = json['web_pages'][0];
  }
}
