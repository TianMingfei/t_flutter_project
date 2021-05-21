import 'package:flutter_app/generated/json/base/json_convert_content.dart';

class TestModelEntity with JsonConvert<TestModelEntity> {
	double userId;
	double id;
	String title;
	String body;
}
