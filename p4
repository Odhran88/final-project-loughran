const data = require('./p4-data.js');


function getQuestions() {
  return data.map(item => item.question);
}

function getAnswers() {
  return data.map(item => item.answer);
}

function getQuestionsAnswers() {
  return JSON.parse(JSON.stringify(data));
}

function getQuestion(number = "") {
  const index = number - 1;
  if (index >= 0 && index < data.length) {
    return {
      question: data[index].question,
      number: number,
      error: ''
    };
  } else {
    return {
      question: '',
      number: number,
      error: 'Question number must be an integer between 1 and the number of questions.'
    };
  }
}

function getAnswer(number = "") {
  const index = number - 1;
  if (index >= 0 && index < data.length) {
    return {
      answer: data[index].answer,
      number: number,
      error: ''
    };
  } else {
    return {
      answer: '',
      number: number,
      error: 'Answer number must be an integer between 1 and the number of answers.'
    };
  }
}

function getQuestionAnswer(number = "") {
  const index = number - 1;
  if (index >= 0 && index < data.length) {
    return {
      question: data[index].question,
      answer: data[index].answer,
      number: number,
      error: ''
    };
  } else {
    return {
      question: '',
      answer: '',
      number: number,
      error: 'Question/Answer number must be an integer between 1 and the number of questions/answers.'
    };
  }
}

module.exports = {
  getQuestions,
  getAnswers,
  getQuestionsAnswers,
  getQuestion,
  getAnswer,
  getQuestionAnswer
};
/*****************************
  Module function testing
******************************/
function testing(category, ...args) {
    console.log(`\n** Testing ${category} **`);
    console.log("-------------------------------");
    for (const o of args) {
      console.log(`-> ${category}${o.d}:`);
      console.log(o.f);
    }
  }
  
  // Set a constant to true to test the appropriate function
  const testGetQs = true;
  const testGetAs = false;
  const testGetQsAs = false;
  const testGetQ = false;
  const testGetA = false;
  const testGetQA = false;
  const testAdd = false;      // Extra credit
  const testUpdate = false;   // Extra credit
  const testDelete = false;   // Extra credit
  // getQuestions()
if (testGetQs) {
    testing("getQuestions", { d: "()", f: getQuestions() });
  }
  
  // getAnswers()
  if (testGetAs) {
    testing("getAnswers", { d: "()", f: getAnswers() });
  }
  
  // getQuestionsAnswers()
  if (testGetQsAs) {
    testing("getQuestionsAnswers", { d: "()", f: getQuestionsAnswers() });
  }
  
  // getQuestion()
  if (testGetQ) {
    testing(
      "getQuestion",
      { d: "()", f: getQuestion() },      // Extra credit: +1
      { d: "(0)", f: getQuestion(0) },    // Extra credit: +1
      { d: "(1)", f: getQuestion(1) },
      { d: "(4)", f: getQuestion(4) }     // Extra credit: +1
    );
  }
  
  // getAnswer()
  if (testGetA) {
    testing(
      "getAnswer",
      { d: "()", f: getAnswer() },        // Extra credit: +1
      { d: "(0)", f: getAnswer(0) },      // Extra credit: +1
      { d: "(1)", f: getAnswer(1) },
      { d: "(4)", f: getAnswer(4) }       // Extra credit: +1
    );
  }
  
  // getQuestionAnswer()
  if (testGetQA) {
    testing(
      "getQuestionAnswer",
      { d: "()", f: getQuestionAnswer() },    // Extra credit: +1
      { d: "(0)", f: getQuestionAnswer(0) },  // Extra credit: +1
      { d: "(1)", f: getQuestionAnswer(1) },
      { d: "(4)", f: getQuestionAnswer(4) }   // Extra credit: +1
    );
  }
  
