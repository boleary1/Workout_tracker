//schema
const mongoose = require('mongoose');
const Schema = mongoose.Schema;

const WorkoutSchema = new Schema({
	day: {
        type: Date,
        default: ()=> new Date(),
	},
	exercises: [
		{
			type: {
				type: String,
				trim: true,
				required: 'Type is required.'
			},
			name: {
				type: String,
				trim: true,
				required: 'Name is required.'
			},
            duration: {
				type: Number,
                trim: true,
                required: 'Name is required.'
            },
            distance: {
				type: Number,
				trim: true
            },
			weight: {
				type: Number,
				trim: true
			},
			reps: {
				type: Number,
				trim: true
            },			
            sets: {
				type: Number,
				trim: true
			}
		}
	]
});

// Create Workout mongoose model and export 
const Workout = mongoose.model('Workout', WorkoutSchema);

module.exports = Workout;