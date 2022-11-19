
import 'package:equatable/equatable.dart';

class Note extends Equatable{
  int? id;
  String? title;
  String? description;
  DateTime? time;

  Note({this.id, this.title, this.description, this.time});
  Note copyWith({
    int? id,
    String? title,
    String? description,
    DateTime? time,
}){
    return Note(
      id: id??this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      time: time ?? this.time,
    );
  }
  Map<String,dynamic> toMap(){
    return <String,dynamic>{
      'title':title,
      'description':description,
      'time':time?.toIso8601String()
    };
  }

  factory Note.fromJson(Map<String,dynamic>json)=>Note(
    id: json['_id'] as int,
    title: json['title'] != null ? json['title'] as String : null,
    description: json['description'] != null? json['description'] as String:null,
    time: json['time'] !=null?DateTime.parse(json['time'] as String):null,
  );

  @override
  String toString() {
    return 'Note(id: $id, title: $title, description: $description, time: $time)';
  }

  @override
  // TODO: implement props
  List<Object?> get props => [id,time,title,description];
}