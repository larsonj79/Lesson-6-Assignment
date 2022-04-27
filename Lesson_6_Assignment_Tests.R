library(testthat)

# each call to test_that() produces one test
# each test represents one point value
# you can have multiple tests for each question

test_that("Q1 var1 and var2 (visible)", {
  
  expect_equal(var1, 3, tolerance = 1e-3)
  expect_equal(var2, 10, tolerance = 1e-3)
  
})

test_that("Q1 var3 and var4 (visible)", {
  
  expect_equal(var3, 24, tolerance = 1e-3)
  expect_equal(var4, 214, tolerance = 1e-3)
  
})

test_that("Q4 var1 (visible)", {
  
  expect_equal(var1g10, FALSE)
  
})

test_that("Q4 var2 (visible)", {
  
  expect_equal(var2g10, FALSE)
  expect_equal(var2ge10, TRUE)
  
})

test_that("Q4 var3 (visible)", {
  
  expect_equal(var3g10, TRUE)
  
})

test_that("Q4 var4 (visible)", {
  
  expect_equal(var4g10, TRUE)
  
})

test_that("Q5 (visible)", {
  
  expect_equal(sum(vec1), 251, tolerance = 1e-3)
  expect_equal(length(vec1), 4, tolerance = 1e-3)
  
})

test_that("Q6 (visible)", {
  
  expect_equal(sum(vec2), 259, tolerance = 1e-3)
  expect_equal(length(vec2), 4, tolerance = 1e-3)
  
})

test_that("Q7 (visible)", {
  
  expect_equal(sum(vec3), 510, tolerance = 1e-3)
  expect_equal(length(vec3), 4, tolerance = 1e-3)
  
})

test_that("Q8 Entry 1 (visible)", {
  
  expect_equal(vec1check[1], "Less than 10")

})

test_that("Q8 Entry 2 (visible)", {
  
  expect_equal(vec1check[2], "Equals 10")
  
})

test_that("Q8 Entries 3 and 4 (visible)", {
  
  expect_equal(vec1check[3], "Greater than 10")
  expect_equal(vec1check[4], "Greater than 10")

})

test_that("Q9 (visible)", {
  
  expect_equal(sum(vec4), 5050, tolerance = 1e-3)
  expect_equal(length(vec4), 100, tolerance = 1e-3)
  
})

test_that("Q10 Values (visible)", {
  
  expect_equal(sum(vec5), 10050, tolerance = 1e-3)

})

test_that("Q10 Length (visible)", {
  
  expect_equal(length(vec5), 100, tolerance = 1e-3)
  
})

test_that("Q12 (visible)", {
  
  expect_equal(var1even, FALSE)
  
})

test_that("Q14 First Five Entries (visible)", {
  
  expect_equal(vec4even[1], FALSE)
  expect_equal(vec4even[2], TRUE)
  expect_equal(vec4even[3], FALSE)
  expect_equal(vec4even[4], TRUE)
  expect_equal(vec4even[5], FALSE)
  
})

test_that("Q14 Next Five Entries (visible)", {
  
  expect_equal(vec4even[6], TRUE)
  expect_equal(vec4even[7], FALSE)
  expect_equal(vec4even[8], TRUE)
  expect_equal(vec4even[9], FALSE)
  expect_equal(vec4even[10], TRUE)
  
})

test_that("Q14 Random Checks (visible)", {
  
  expect_equal(vec4even[24], TRUE)
  expect_equal(vec4even[49], FALSE)
  expect_equal(vec4even[65], FALSE)
  expect_equal(vec4even[71], FALSE)
  expect_equal(vec4even[87], FALSE)
  
})

test_that("Q14 Other Checks (visible)", {
  
  expect_equal(length(vec4even), 100, tolerance = 1e-3)

})

