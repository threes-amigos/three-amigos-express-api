'use strict'

const controller = require('lib/wiring/controller')
const models = require('app/models')
const Question = models.question
const mongoose = require('mongoose')
const authenticate = require('./concerns/authenticate')
const setUser = require('./concerns/set-current-user')
const setModel = require('./concerns/set-mongoose-model')

const index = (req, res, next) => {
  // console.log(req.body.survey.id)
  Question.find()
    .then(questions => res.json({
      questions: questions.map((e) =>
        e.toJSON({ virtuals: true, user: req.user })),
    }))
    .catch(next)
}
const indexBySurvey = (req, res, next) => {
  // console.log(req.body.survey.id)
  Question.find({ '_survey': [
        mongoose.Types.ObjectId(req.body.survey.id)
    ] })
    .then(questions => res.json({
      questions: questions.map((e) =>
        e.toJSON({ virtuals: true, user: req.user })),
    }))
    .catch(next)
}
const show = (req, res) => {
  res.json({
    question: req.question.toJSON({ virtuals: true, user: req.user }),
  })
}

const create = (req, res, next) => {
  // // console.log('this is req.body ', req.body)
  // console.log("req.body.question: ", req.body.question)
  // // console.log('this is req.question._survey ', req.question._survey)
  // console.log('req.body.user is ', req.body.user)
  const question = Object.assign(req.body.question, {
    _owner: req.user._id,
    _survey: req.body.question._survey
  })
  Question.create(question)
    .then(question =>
      res.status(201)
        .json({
          question: question.toJSON({ virtuals: true, user: req.user }),
        }))
    .catch(next)
}

const update = (req, res, next) => {
  delete req.body._owner  // disallow owner reassignment.
  req.question.update(req.body.question)
    .then(() => res.sendStatus(204))
    .catch(next)
}

const destroy = (req, res, next) => {
  req.question.remove()
    .then(() => res.sendStatus(204))
    .catch(next)
}

module.exports = controller({
  index,
  show,
  create,
  update,
  destroy,
  indexBySurvey,
}, { before: [
  { method: setUser, only: ['index', 'show'] },
  { method: authenticate, except: ['index', 'show'] },
  { method: setModel(Question), only: ['show'] },
  { method: setModel(Question, { forUser: true }), only: ['update', 'destroy'] },
], })
