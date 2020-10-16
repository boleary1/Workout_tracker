-- Create Database if it doesn't exist --
DROP DATABASE IF EXISTS workout_tracker;

CREATE DATABASE workout_tracker;
USE workout_tracker;
CREATE TABLE exercises (
    id INT NOT NULL AUTO_INCREMENT,
    workout_date DATETIME,
    exercise_name VARCHAR(75) NOT NULL,
    exercise_type VARCHAR(25) NOT NULL,
    exercise_duration INT NOT NULL,
    exercise_reps INT,
    exercise_sets INT,
    weight_applied INT,
    exercise_distance INT,
    PRIMARY KEY(id)
);


INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Dumbbell curls', 'Upper', '1', 'Stand holding a dumbbell in each hand with your arms hanging by your sides. Ensure your elbows are close to your torso and your palms facing forward. Keeping your upper arms stationary, exhale as you curl the weights up to shoulder level while contracting your biceps.');
INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Triceps dip', 'Upper', '0', 'Sit in a chair or something sturdy (like a box) and put your hands beside you, roughly shoulder-width apart, fingers facing forward. Then, slide your body forward, off of the support. Steady yourself, using your arms for support. Dip down, bending your arms, touching your bottom to the ground, then raise yourself back up again. It’s sort of like a seated pushup.');
INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Pushups', 'Upper', '0', 'With hands slightly wider than your shoulders, lower your body until your elbows are at a 90-degree angle, then push up.');
INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Up-Down Plank', 'Upper', '0', 'Begin in a full plank. Lower your right elbow to the mat and then your left, coming into an elbow plank.Put your right hand on the mat and straighten your right elbow. Do the same on the left to return to a full plank.');
INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Burpees', 'Cardio', '0', 'Start in a squat. Put your palms on the floor. Shift quickly into a pushup position. Do a pushup (optional). Jump back into squatting position. Do an explosive jump, hands in the air, and land in a standing position.');
INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Stairs', 'Cardio', '0', 'Stair running, as long as you have some stairs nearby. Stair workouts help you build strength and power in your lower body and gets the heart rate pumping.');
INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Mountain Climbers', 'Cardio', '0', 'Assume a pushup or plank position. Step forward with one foot, pulling your knee toward your chest. Alternate legs. Do a desired number of reps or do AMRAP for a desired amount of time. Keep your back straight to maximize effectiveness and avoid injury.');
INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Curtsy Lunge', 'Lower', '0', 'Start from standing, and step your left leg behind you and to the right so your thighs cross, bending both knees as if you were curtsying. Make sure your front knee is aligned with your front ankle. Return to standing, and switch sides to complete one rep.');
INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Deadlift', 'Lower', '1', 'Stand over a barbell, feet at hip width. Bend at the knees, keeping your back straight and your weight back. Using an overhand grip, grab the barbell with your hands just outside your knees. Push up from the hips, lifting the weight to hip height.');
INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Jump Squats', 'Lower', '0', 'Stand tall. Push your hips back and bend at the knees to lower into a squat. Once your thighs are parallel to the floor, push through your feet to explode upward, driving your arms overhead. Land softly and repeat.');
INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Lunges', 'Lower', '0', 'From a standing position, move one foot forward, then drop your body straight down until your front knee is at a 90-degree angle directly above your ankle.');
INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Goblet Squats', 'Lower', '1', 'Start from a standing position with your feet wide and pointed out, holding the head of the dumbbell or a kettlebell with both hands at chest level. Keep your back straight and push down with your butt until your hips are below your knees. Extend your hips and knees and return to the standing position.');
INSERT INTO exercises (exercise_name, body_zone, weights_used,exercise_description) VALUES ('Squats', 'Lower', '0', 'Stand with your feet shoulder-width apart. Lower your body, keeping your upper body up and bending at the hips and the knees, until you’re in a squat, with your knees over your ankles and your thighs parallel to the floor. Raise yourself up, pushing through your heels.');



CREATE TABLE workout (
    id INT NOT NULL AUTO_INCREMENT,
    workout_name VARCHAR(75) NOT NULL,
    exercise_id INT NOT NULL,
    PRIMARY KEY(id)
);

SELECT * FROM exercises;
SELECT * FROM workout;

INSERT INTO workout (exercise_name, body_zone, weights_used,exercise_description) VALUES ;