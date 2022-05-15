/// Num : 1
/// Question : "qqq"
/// Answer : "asd"
/// Point : 100
/// Type : 1

class FbQuestion {
  FbQuestion({
      this.num, 
      this.question, 
      this.answer, 
      this.point, 
      this.type,});

  FbQuestion.fromJson(dynamic json) {
    num = json['Num'];
    question = json['Question'];
    answer = json['Answer'];
    point = json['Point'];
    type = json['Type'];
  }
  int num;
  String question;
  String answer;
  int point;
  int type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['Num'] = num;
    map['Question'] = question;
    map['Answer'] = answer;
    map['Point'] = point;
    map['Type'] = type;
    return map;
  }

}