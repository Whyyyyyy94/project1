Gymplan.destroy_all
g1 = Gymplan.create :day => 1, :focus => 'Chest', :image => 'https://i.ytimg.com/vi/jdunwLczz8o/maxresdefault.jpg'
g2 = Gymplan.create :day => 2, :focus => 'Back', :image => 'https://d3h9ln6psucegz.cloudfront.net/wp-content/uploads/2021/10/Back-Workout.jpg'
g3 = Gymplan.create :day => 3, :focus => 'Shoulders', :image => 'https://builtwithscience.com/wp-content/uploads/2019/07/dumbbell-shoulder-exercises-thumbnail-1.png'
puts "#{ Gymplan.count } gymplans"

Exercise.destroy_all
e1 = Exercise.create :name => 'Benchpress', :reps => 12, :sets => 4, :image => 'https://i.ytimg.com/vi/SCVCLChPQFY/maxresdefault.jpg'
e2 = Exercise.create :name => 'Pull-up', :reps => 12, :sets => 4, :image => 'https://weighttraining.guide/wp-content/uploads/2016/10/pull-up-2-resized.png'
e3 = Exercise.create :name => 'Shoulder press', :reps => 12, :sets => 4, :image => 'https://cdn-0.weighttraining.guide/wp-content/uploads/2016/05/Dumbbell-Shoulder-Press-resized.png?ezimgfmt=ng%3Awebp%2Fngcb4'
puts "#{ Exercise.count } exercises"

Supplement.destroy_all
s1 = Supplement.create :name => 'Creatine'
s2 = Supplement.create :name => 'Protein powder'
s3 = Supplement.create :name => 'Pre-workout'
puts "#{ Supplement.count } supplements"

# Associations ######################################################
puts "Gymplans and exercises"
g1.exercises << e1
g2.exercises << e2
g3.exercises << e3

puts "Gymplans and supplements"
g1.supplements << s1 << s2 << s3
g2.supplements << s1 << s2 << s3
g3.supplements << s1 << s2






