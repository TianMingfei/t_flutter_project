import 'package:flutter_app/test_model_entity.dart';

testModelEntityFromJson(TestModelEntity data, Map<String, dynamic> json) {
	if (json['userId'] != null) {
		data.userId = json['userId'] is String
				? double.tryParse(json['userId'])
				: json['userId'].toDouble();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? double.tryParse(json['id'])
				: json['id'].toDouble();
	}
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['body'] != null) {
		data.body = json['body'].toString();
	}
	return data;
}

Map<String, dynamic> testModelEntityToJson(TestModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['userId'] = entity.userId;
	data['id'] = entity.id;
	data['title'] = entity.title;
	data['body'] = entity.body;
	return data;
}