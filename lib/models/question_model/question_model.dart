class QuestionModel {
  String? id;
  String? questionAr;
  String? questionEg;
  String? answerAr;
  String? answerEg;

  QuestionModel(
      {this.id,
      this.questionAr,
      this.questionEg,
      this.answerAr,
      this.answerEg});

  QuestionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    questionAr = json['question_ar'];
    questionEg = json['question_eg'];
    answerAr = json['answer_ar'];
    answerEg = json['answer_eg'];
  }
}
