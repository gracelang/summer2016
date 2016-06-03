dialect "minitest"
import "sys" as sys

var requests := 0

method timeExecution (f) {
    def start = sys.elapsedTime
    def startCount = sys.requestCount
    f.apply
    def end = sys.elapsedTime
    def endCount = sys.requestCount
    def total = end - start
    requests := endCount - startCount
//    print "{requests} requests"
//    sequence [total, requests]
    total
}

method ackermann (m, n) -> Number {
    if ((m > 0) && (n > 0)) then {
        ackermann (m - 1, ackermann (m, n - 1))
    } elseif {m > 0} then {
        ackermann (m - 1, 1)
    } else {
        n + 1
    }
}

method timeAckermann (m, n) -> Number {
    def start = sys.elapsedTime
    print "A({m}, {n}) = {ackermann (m, n)}"
    def end = sys.elapsedTime
    def total = end - start
    print "took {total} seconds"
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

method sq (n) -> Number{
    return n * n
}

method benchmark (length, function) {
    var timeList := list [ ]
    repeat (length) times {
        timeList.add (timeExecution (function))
    }
    timeList.sort
    print "Minimum: {timeList.at(1)} seconds"
    print "1st Quartile: {quartile1 (timeList)} seconds"
    print "Median: {median (timeList)} seconds"
    print "3rd Quartile: {quartile3 (timeList)} seconds"
    print "Maximum: {timeList.at(length)} seconds"
    print "Standard Dev: {stDev (timeList)} seconds"
    print "{requests / median (timeList)} requests/second (using median time)"
}

benchmark (20, {ackermann (3, 6)})

testSuite {
    test "1st quartile" by {
        def data = (1..100).asList
        assert (quartile1(data)) shouldBe 25.5
    }
}
