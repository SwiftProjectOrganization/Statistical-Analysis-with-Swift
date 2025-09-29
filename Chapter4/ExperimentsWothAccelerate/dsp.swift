import Accelerate

func main() {
    // setup
    let n = 1_000_000
    let m = 10_000

    let a = Array(repeating: 2.5, count: n)
    let b = Array(repeating: 1.88, count: n)
    var c = Array(repeating: 0.0, count: n)

    // warmup
    for _ in 0..<3 {
        vDSP.add(a, b, result: &c)
    }

    // benchmark
    print("Accelerate vDSP")

    let tic = ContinuousClock.now

    for _ in 0..<m {
        vDSP.add(a, b, result: &c)
    }

    let toc = tic.duration(to: .now)

    print("first", c[0], "last", c[n-1])
    print(toc)
}

main()
