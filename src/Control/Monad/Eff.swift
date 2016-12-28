// Control.Monad.Eff

public func pureE<A>(_ a: A) -> () -> A {
    return { _ in
        return a
    }
}

public func bindE<A, B>(_ a: @escaping () -> A) -> (_: @escaping (A) -> () -> B) -> () -> B {
    return { f in
        return { _ in
            return f(a())()
        }
    }
}

public func runPure<A>(_ f: () -> A) -> A {
    return f()
}

public func untilE(_ f: @escaping () -> Bool) -> () -> () {
    return { _ in
        while !f() {}
    }
}

public func whileE(_ f: @escaping () -> Bool) -> (_: /*a*/ @escaping () -> ()) -> () -> () {
    return { a in
        return { _ in
            while f() {
                a()
            }
        }
    }
}

public func forE(_ lo: Int) -> (_: /*hi*/ Int) -> (_: /*f*/ @escaping (Int) -> () -> ()) -> () -> () {
    return { hi in
        return { f in
            return { _ in
                for i in lo..<hi {
                    f(i)()
                }
            }
        }
    }
}

public func foreachE<A>(_ as: Array<A>) -> (_: /*f*/ @escaping (A) -> () -> ()) -> () -> () {
    return { f in
        return { _ in
            for a in `as` {
                f(a)()
            }
        }
    }
}
