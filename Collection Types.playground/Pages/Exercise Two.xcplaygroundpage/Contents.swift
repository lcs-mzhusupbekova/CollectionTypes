/*:
 [Previous](@previous)
 
 # Exercise Two
 
 A restaurant asks diners to rate their dining experience on a scale of 1 to 100, where 1 is "very bad", and 100 is "perfection".
 
 1. Create an empty mutable array of type `Double` named `restaurantRatings`:
 
 */

import Foundation

var restaurantRatings : [Double] = []

/*:
 2. Now populate the array with twenty random ratings between 1 and 100.
 */
for _ in 1...20 {
    restaurantRatings.append( Double( arc4random_uniform(99) + 1 ))
}


/*:
 3. Determine the average rating. Remember, calculate an average by finding the sum of all the values, then dividing by the number of values.
 */
var total = 0.0
for restaurantRating in restaurantRatings {
    total += restaurantRating
    
}
let restaurantRatingTotal = Double(restaurantRatings.count)
var average = total / restaurantRatingTotal

/*:
 4. The restaurant is most concerned with how many diners considered their meal to be less than satisfactory. Calculate the percentage of diners who gave the restaurant a rating less than 80.
 */
var badMeals: Double = 0
for restaurantRating in restaurantRatings {
  if restaurantRating < 80 {
    badMeals += 1
    }
}
    let percent = badMeals / 20 * 100

/*:
 5. The manager wants more detail. Prepare a report that indicates how many diners found the restuarant "Very Bad" (0 to 25), "Bad" (25 to 49), "Fair" (50 to 79), "Satisfactory" (80 to 89), and "Stellar" (90 to 100).
 */

/*for restaurantRating in restaurantRatings {
    if restaurantRating < 25 {
        print("Very Bad")
    }
    else if restaurantRating <= 49 { //25 to 49
        print( "Bad")
    }
    else if restaurantRating <= 79 { //50 to 79
        print("Fair" )
    }
    else if restaurantRating <= 89 {
        print("Satisfactory")
    }
    else if restaurantRating <= 100 {
        print( "Stellar")
    }
}*/
var veryBadRatings = 0
var badRatings = 0
var fairRatings = 0
var satisfactoryRatings = 0
var stellarRatings = 0

for rating in restaurantRatings{
    if rating < 25 {
        veryBadRatings+=1
    }
    else if rating <= 49 { //25 to 49
        badRatings+=1
    }
    else if rating <= 79 { //50 to 79
        fairRatings+=1
    }
    else if rating <= 89 {
        satisfactoryRatings+=1
    }
    else if rating <= 100 {
        stellarRatings+=1
    }
}
print("This is the report! There are \(veryBadRatings) very bad ratings, \(badRatings) bad ratings, \(fairRatings) fair ratings, \(satisfactoryRatings) satisfactory rating, and \(stellarRatings) stellar ratings")
