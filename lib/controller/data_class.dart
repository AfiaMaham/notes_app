class DataClass{
  String name;
  String data;

  DataClass({required this.name,required this.data});

  Map<String,String> toMap(){
    return {
      'name': this.name,
      'data': this.data,
    };
  }
  factory DataClass.fromMap(Map<String, String> map){
    return DataClass(
      name: map['name']!, data: map['data']!,
    );
  }
}