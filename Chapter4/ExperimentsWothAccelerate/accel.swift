import Accelerate

func main() {
    let n = 5_000_000
    let m = 1000

    let a = Array(repeating: 2.5, count: n)
    let b = Array(repeating: 1.88, count: n)
    var c = Array(repeating: 0.0, count: n)

    for _ in 0..<m {
        vDSP.add(a, b, result: &c)
    }

    print("first", c[0], "last", c[n-1])
}

main()