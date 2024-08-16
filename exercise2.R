# Taha Ababou

# 2. Logs
  x <- 12.43
  x_log <- log(x)
  x_log2 <- log2(x)
  x_log10 <- log10(x)
  x_exp <- exp(x)

# 3. Area circle
  diameter <- 20
  radius <- diameter/2
  area_circle <- pi * (radius^2)
  
  print("Area Circle is:")
  print(area_circle)

# 4. Calculate the cube root of 14 x 0.51
  cube_root <- (14 * 0.51)^(1/3)
  print("Cube root is:")
  print(cube_root)

# 5. Vectors (part 1)
  weight = c(69, 62, 57, 59, 59, 64, 56, 66, 67, 66)
  print(weight)

# 6. Vectors (part 2)
  weight_mean = mean(weight)
  weight_variance = var(weight)
  weight_sd = sd(weight)
  weight_range = range(weight)
  weight_children = length(weight)
  
  first_five <- weight[1:5]

# 7. Vectors (part 3)
  height <- c(112, 102, 83, 84, 99, 90, 77, 112, 133, 112)
  
  # Summarize height
  summary(height)
  
  # Extract the height of the 2nd, 3rd, 9th, and 10th children
  some_child <- height[c(2, 3, 9, 10)]
  some_child
  
  # Extract all heights less than or equal to 99 cm
  shorter_child <- height[height <= 99]
  shorter_child

# 8.BMI
  bmi = weight / (height^2)

# 9. Seq()
  seq1 = seq(0,1,0.1)

# 10. Seq2()
  seq2 = rev(seq(1, 10, 0.5))

# 11. Repetitions
  numbers = c(1,2,3)

  # 1 2 3 1 2 3 1 2 3
  rep1 = rep(numbers,3)
  rep1
  
  letters = c('a','c','e', 'g')
  
  # “a” “a” “a” “c” “c” “c” “e” “e” “e” “g” “g” “g”
  rep2 <- rep(letters, each = 3)
  rep2
  
  # “a” “c” “e” “g” “a” “c” “e” “g” “a” “c” “e” “g”
  rep3 = rep(letters, 3)
  rep3
  
  # 1 1 1 2 2 2 3 3 3 1 1 1 2 2 2 3 3 3
  rep4 = rep(numbers, each = 3)
  rep4
  
  # 1 1 1 1 1 2 2 2 2 3 3 3 4 4 5
  rep5 <- rep(1:5, times = c(5, 4, 3, 2, 1))
  rep5
  
  # 7 7 7 7 2 2 2 8 1 1 1 1 1
  repq6 <- rep(c(7, 2, 8, 1), times = c(4, 3, 1, 5))
  rep6
