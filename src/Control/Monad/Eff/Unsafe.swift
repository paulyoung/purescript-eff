public extension Control.Monad.Eff.Unsafe._Foreign {
    public static func unsafeCoerceEff<A>(_ f: A) -> A {
        return f
    }
}
