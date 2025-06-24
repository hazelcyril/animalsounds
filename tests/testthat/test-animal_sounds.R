test_that("animal_sounds produces expected strings", {
  dog_woof <- animal_sounds("dog", "woof")
  expect_equal(dog_woof, "The dog goes woof!")
  #expect_equal(dog_woof, "The dog says woof!")

  expect_equal(animal_sounds("cat", "meow"), "The cat goes meow!")
})

#
# test_that("animal_sounds handles invalid input", {
#   expect_error(animal_sounds("dog", c("woof", "bark")), "Every input value must be a single string!")
# })

test_that("animal_sounds handles invalid input", {
  expect_error(animal_sounds("dog", c("woof", "bark", "bow bow")), class = "error_not_single_string")

  expect_error(animal_sounds("dog", factor("woof")), class = "error_not_single_string")
})


test_that("animal_sounds produces expected string when vector of length 1 is input", {
  expect_equal(animal_sounds("dog", c("woof")), "The dog goes woof!")
})


test_that("error message for invalid input", {
  expect_snapshot(animal_sounds("dog", c("woof", "bow wow wow")),
                  error = TRUE)
})

giraffe <- animal_sounds("giraffe")
expect_equal(giraffe,
             "The giraffe makes no sound!")

nothing <- animal_sounds(NULL, "whoosh")
expect_equal(nothing,
             "Nothing makes whoosh!")
