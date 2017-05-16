'use strict'

const mongoose = require('mongoose')

const questionSchema = new mongoose.Schema({
  question: {
    type: String,
    required: true,
  },
  questionNumber: {
    type: Number,
    required: true,
  },
  numberOfTimesAnswered: {
    type: Number,
    required: false,
  },
  sumOfAnswers: {
    type: Number,
    required: false,
  },
  _survey: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'Survey',
    required: true,
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true,
  }
}, {
  timestamps: true,
  toJSON: {
    virtuals: true,
    transform: function (doc, ret, options) {
      let userId = (options.user && options.user._id) || false
      ret.editable = userId && userId.equals(doc._owner)
      return ret
    },
  },
})

questionSchema.virtual('avgScore').get(function () {
  let avgScore = this.numberOfTimesAnswered / this.sumOfAnswers
  return avgScore
})

const Question = mongoose.model('Question', questionSchema)

module.exports = Question
