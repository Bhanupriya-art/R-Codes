# Repeat loop executes the same code again and again until a stop condition is met
v <- c("hello","loop")
count <- 2
repeat{
  print(v)
  count = count + 1
  if(count > 5){
    break
  }
}

i <- 5
repeat{
  print(i)
  i = i + 5
  if(i > 25){
    break
  }
}
# Or
i <- 5
repeat {if (i > 25) break else {print(i); i <- i + 5}}
