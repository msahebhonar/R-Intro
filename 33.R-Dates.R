# Dates
now <- Sys.Date() ; now
class(now)

as.Date("2012-03-14")
as.Date("2012/03/14")

as.Date("05/30/2015")
as.Date("05/30/2015", format = "%m/%d/%Y")
as.Date("January 01, 2016", format = "%B %d, %Y")
as.Date("Feb 14, 2016", format = "%b %d, %Y")
as.Date("Oct 31, 16", format = "%b %d, %y")

ndate <- as.numeric(Sys.Date()) ; ndate
class(ndate) = "Date" ; ndate

# Extract Parts of a Date Object
weekdays(now)
months(now)
quarters(now)

# POSIX: Portable Operating System Interface
d1 <- as.POSIXct("2015-12-1 11:59") ; d1
unclass(d1)
d2 <- as.POSIXlt("2015-09-05 8:30:10") ; d2
unclass(d2)

# strptime & strftime
x <- strptime("10/Jan/2016, 12:10:30", "%d/%b/%Y, %H:%M:%S") ; x
class(x)
now
y <- strftime(now, "%B %d, %Y") ; y
