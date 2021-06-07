class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(this.id, this.answer, this.question, this.options);
}

const List sample_data = [
  {
    "id": 1,
    "question " :
        "When was Amara born?",
    "options" : [ '11th January' , '11th February' , '11thMarch' , '11th April' ] ,
    "answer_index" : 1,
  },
  {
    "id": 2,
    "question " :
    "What is Amara's favorite color?",
    "options" : [ 'sea blue' , 'parrot green' , 'char coal' , 'shocking pink' ] ,
    "answer_index" : 2,
  },
  {
    "id": 3,
    "question " :
    "In which semester Amara is currently enrolled in?",
    "options" : [ '6th semester' , '7th semester' , '8th semester' , 'Graduated' ] ,
    "answer_index" : 3,
  },
  {
    "id": 4,
    "question " :
    "Which of the following is Amara's favourite word",
    "options" : [ 'ambition' , 'leaf' , 'solitude' , 'stay' ] ,
    "answer_index" : 4,
  },
];