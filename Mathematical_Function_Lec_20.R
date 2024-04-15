#Mathematical Function
x<-4
abs(x)

x<-0.4
abs(x)

x<-0.6
abs(x)

sqrt(4)
sqrt(-4) #Error

y<-4.2
ceiling(y)#Round off value
floor(y)#less in round off

trunc(5.19)#truncate function
trunc(5.5)

round(0.5)
round(0.6)
round(3.5)
round(3.568,digit=1)
round(3.4567,digit=2)
round(3.44,digit=1)

x<-4
log(x)
log10(x)
exp(x)

#SUBSTRING
substr("abcdef",2,4)

#nchar
x<-"big data" #Counting the number of characters including spaces
nchar(x)

#grep()Global regural expression print
#is used to search for matches of a pattern within each element of the given string
#SYNTAX  grep(pattern,x,ignore.case=TRUE/FALSE,value=TRUE/FALSE)

#Parameter pattern specified pattern which is going to be matched with given elements of the string
#x:Specified string vector
#ignore.case:If its value is TRUE,it ignores the upper case(upper or lower)
#value:if its value is true,it will return the matching elements vector,else return the indices vector

x<-c("GFG","gfg","xyz","xyz")
grep("gfg",x)
grep("xyz",x)
grep("gfg",x,ignore.case=FALSE)
grep("gfg",x,ignore.case=TRUE)
grep("b+",c("ab+","bda2","+ccaa","ad"),value=TRUE)#Return the ,atching element vector
grep("b+",c("ab+","bda2","+ccaa","ad"),value=FALSE)#returning the index value

#sub() function-Replaces the first match of a pattern from a string
#SYNTAX: sub(pattern,replacement,string,ignore.case=TRUE/FALSE)
#PARAMETER
#pattern: string to be matched
#replacement:string for replacement
#string:string or String vector
#ignore.case:Boolean value for case-sensitive replacement

x<-"Hello world hello"
sub("ell","how",x)
sub("ELL","how",x,ignore.case=TRUE)

#strsplit()
#SYNTAX: strsplit(string,split,fixed)
#

strsplit("xyz",'')
strsplit("xyz","")
strsplit("xyz",'_')
strsplit("hello world","")

x<-"hello world"
strsplit(x," ")

#strsplit() function with regular expression delimiter
x<-"hello2world9"
new_x<-strsplit(x,split ="[0-9]")
print(new_x)

#Splitting the dates using strsplit() function in R
string_date<-c("2-07-2020","5-07-2020",
               "7-07-2020","8-07-2020")
result<-strsplit(string_date,split="_")
print(result)

st1<-"sAHiL"
print(tolower(st1))