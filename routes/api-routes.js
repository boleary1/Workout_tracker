const express = require('express');

const router = express.Router();

const path = require('path');
let db = require("../models");


// Route to add an exercise
router.get("/api/workouts", (req, res) => {
    db.Workout.find({})
    .then(dbWorkouts => {
      res.json(dbWorkouts);
    })
    .catch(err => {
      res.json(err);
    });
});

// Route to view workout dashboard
router.put("/api/workouts/:id", (req, res) => {
    const id = req.params.id
    console.log(id, req.body)
    db.Workout.findByIdAndUpdate(id,{
        $push: { exercises: req.body }
    })
    .then(dbWorkouts => {
      res.json(dbWorkouts);
    })
    .catch(err => {
      res.json(err);
    });
});

// Route for index page - Add new or continue a workout
router.post("/api/workouts", ({body}, res) => {
    db.Workout.create(body)
    .then(dbWorkout => {
      res.json(dbWorkout);
    })
    .catch(err => {
      res.json(err);
    });
});

router.get("/api/workouts/range", (req, res) => {
  db.Workout.find({})
  .then(dbWorkouts => {
    console.log(dbWorkouts)
    res.json(dbWorkouts);
  })
  .catch(err => {
    res.json(err);
  });
});

module.exports = router;