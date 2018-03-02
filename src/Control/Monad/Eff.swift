public extension Control.Monad.Eff._Foreign {
    public static func pureE<A>(_ a: A) -> () -> A {
        return {
            return a
        }
    }

    public static func bindE<A, B>(_ a: @escaping () -> A) -> (_: @escaping (A) -> () -> B) -> () -> B {
        return { f in
            return {
                return f(a())()
            }
        }
    }

    public static func runPure<A>(_ f: () -> A) -> A {
        return f()
    }

    public static func untilE(_ f: @escaping () -> Bool) -> () -> () {
        return {
            while !f() {}
        }
    }

    public static func whileE(_ f: @escaping () -> Bool) -> (_: /*a*/ @escaping () -> ()) -> () -> () {
        return { a in
            return {
                while f() {
                    a()
                }
            }
        }
    }

    public static func forE(_ lo: Int) -> (_: /*hi*/ Int) -> (_: /*f*/ @escaping (Int) -> () -> ()) -> () -> () {
        return { hi in
            return { f in
                return {
                    for i in lo..<hi {
                        f(i)()
                    }
                }
            }
        }
    }

    public static func foreachE<A>(_ as: Array<A>) -> (_: /*f*/ @escaping (A) -> () -> ()) -> () -> () {
        return { f in
            return {
                for a in `as` {
                    f(a)()
                }
            }
        }
    }
}
