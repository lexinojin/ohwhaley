what <- c("This is a character string")
say(what)
expect_type(what, "character")
expect_gt(length(what), 0)
