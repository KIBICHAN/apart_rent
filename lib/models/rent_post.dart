class RentPost{
  final int id;
  final String title;
  final String price;
  final String area;
  final int numBedroom;
  final int numBathroom;
  final String location;
  final String description;
  final String time;
  final String imgUrl;

  const RentPost({
    required this.id, 
    required this.title, 
    required this.price, 
    required this.area, 
    required this.numBedroom, 
    required this.numBathroom, 
    required this.location, 
    required this.description, 
    required this.time, 
    required this.imgUrl, 
  });

  factory RentPost.fromJson(Map<String, dynamic> json){
    return RentPost(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      area: json['area'],
      numBedroom: json['numBedroom'],
      numBathroom: json['numBathroom'],
      location: json['location'],
      description: json['description'],
      time: json['time'],
      imgUrl: json['imgUrl']
    );
  }
}