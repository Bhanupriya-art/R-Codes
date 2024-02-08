# Datatype Conversion

# Into Numeric
as.numeric(26L)
as.numeric(10 + 8i)
as.numeric(TRUE)
as.numeric(FALSE)
as.numeric(T)
as.numeric('HI')
as.numeric("Hello")
as.numeric(12345)
as.numeric("1234")
as.numeric("1234abc")

# Into Integer
int1 <- as.integer(52.676)
int1
class(int1)
int2 <- as.integer(45 + 6i)
int2
class(int2)
int3 <- as.integer(TRUE)
int3
class(int3)
int4 <- as.integer("1234")
int4
class(int4)
int5 <- as.integer("1234ggh")
int5
class(int5)


# Into Complex
as.complex(56)
as.complex(0)
as.complex(1)
as.complex(54.7)
as.complex(46L)
as.complex(TRUE)
as.complex(FALSE)
as.complex("hi")

# Into character
c1 <- as.character("1234")
c1
c2 <- as.character("1233aabb")
c2
complex1 <- as.complex("1233")
complex1
complex2 <- as.complex("1233aabb")
complex2

# Into Logical
as.logical(56L)
as.logical('hi')
as.logical("hello")
as.logical(TRUE)
as.logical(FALSE)
as.logical(T)
as.logical(1235)
as.logical("1234")
as.logical("1234fgh")
as.logical(0)
logi <- as.logical(5+6i)
logi








