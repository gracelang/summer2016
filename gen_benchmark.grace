import "sys" as sys

var requests:= 0;

method benchmark (funcName, nIterations, function) {
    printHeader
    var timeList := list [ ]
    repeat (nIterations) times {
        timeList.add (timeExecution (function))
    }
    timeList.sort
    print "{funcName}|{timeList.at(1)}|{quartile1 (timeList)}|{median (timeList)}|{quartile3 (timeList)}|{timeList.at(nIterations)}|{stDev (timeList)}|{median (timeList)}|{requests/median (timeList)}"
    requests := 0
}

method printHeader {
    print "Function|Minimum (s)|1st Quartile (s)|Median (s)|3rd Quartile (s)|Maximum (s)|Standard Dev (s)|Requests/Second"
}

method timeExecution (f) {
    def start = sys.elapsedTime
    def startCount = sys.requestCount
    f.apply
    def end = sys.elapsedTime
    def endCount = sys.requestCount
    def total = end - start
    requests := endCount - startCount
    total
}

method median (aList) -> Number {
    if ((aList.size % 2) == 0) then {
        return (aList.at(aList.size/2) + aList.at(aList.size/2+1))/2
    } else {
        return (aList.at((aList.size + 1)/2))
    }
}

method quartile1 (aList) -> Number {
    var lowList := list [ ]
    for (1 .. (aList.size/2).floor) do { i -> 
        lowList.add(aList.at(i))
    }
    return median(lowList)
}

method quartile3 (aList) -> Number {
    var highList := list [ ]
    for ((aList.size/2).ceiling .. aList.size) do { i -> 
        highList.add(aList.at(i))
    }
    return median(highList)
}

method stDev (aList) -> Number {
    def avg = avg(aList)
    var sumOSq := 0
    for (aList) do { i -> 
        sumOSq := sq (i - avg)
    }
    return (sumOSq/aList.size).sqrt
}

method avg (aList) -> Number {
    var sum := 0
    for (aList) do { i -> 
        sum := sum + i
    }
    return sum / aList.size
}

method sq (x) -> Number{
    return x * x
}