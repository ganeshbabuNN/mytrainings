calculate_two_numbers <- function(num1, num2, operation = "add") {
  if (!is.numeric(num1) || !is.numeric(num2)) {
    stop("Both inputs must be numeric.")
  }

  result <- switch(
    operation,
    add = num1 + num2,
    subtract = num1 - num2,
    multiply = num1 * num2,
    divide = {
      if (num2 == 0) {
        stop("Cannot divide by zero.")
      }
      num1 / num2
    },
    stop("Unsupported operation. Use add, subtract, multiply, or divide.")
  )

  return(result)
}

# Auto-populated sample values
first_number <- 20
second_number <- 5

addition_result <- calculate_two_numbers(first_number, second_number, "add")
subtraction_result <- calculate_two_numbers(first_number, second_number, "subtract")
multiplication_result <- calculate_two_numbers(first_number, second_number, "multiply")
division_result <- calculate_two_numbers(first_number, second_number, "divide")

cat("First number:", first_number, "\n")
cat("Second number:", second_number, "\n")
cat("Addition:", addition_result, "\n")
cat("Subtraction:", subtraction_result, "\n")
cat("Multiplication:", multiplication_result, "\n")
cat("Division:", division_result, "\n")
