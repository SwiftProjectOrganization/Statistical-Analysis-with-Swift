func main() {
    let n = 5_000_000
    let m = 1000

    let a = Array(repeating: 2.5, count: n)
    let b = Array(repeating: 1.88, count: n)
    var c = Array(repeating: 0.0, count: n)

    for i in 0..<m {
        //for i in 0..<n {
            c[i] = a[i] + b[i]
        //}
    }

    print("first", c[0], "last", c[m-1])
}

main()