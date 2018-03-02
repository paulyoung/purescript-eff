public extension Control.Monad.Eff.Uncurried._Foreign {
    public static func mkEffFn1<A, R>(_ fn: @escaping (A) -> () -> R) -> (A) -> R {
        return { a in
            return fn(a)()
        }
    }

    public static func mkEffFn2<A, B, R>(_ fn: @escaping (A) -> (B) -> () -> R) -> (A, B) -> R {
        return { a, b in
            return fn(a)(b)()
        }
    }

    public static func mkEffFn3<A, B, C, R>(_ fn: @escaping (A) -> (B) -> (C) -> () -> R) -> (A, B, C) -> R {
        return { a, b, c in
            return fn(a)(b)(c)()
        }
    }

    public static func mkEffFn4<A, B, C, D, R>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> () -> R) -> (A, B, C, D) -> R {
        return { a, b, c, d in
            return fn(a)(b)(c)(d)()
        }
    }

    public static func mkEffFn5<A, B, C, D, E, R>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> () -> R) -> (A, B, C, D, E) -> R {
        return { a, b, c, d, e in
            return fn(a)(b)(c)(d)(e)()
        }
    }

    public static func mkEffFn6<A, B, C, D, E, F, R>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> () -> R) -> (A, B, C, D, E, F) -> R {
        return { a, b, c, d, e, f in
            return fn(a)(b)(c)(d)(e)(f)()
        }
    }

    public static func mkEffFn7<A, B, C, D, E, F, G, R>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> () -> R) -> (A, B, C, D, E, F, G) -> R {
        return { a, b, c, d, e, f, g in
            return fn(a)(b)(c)(d)(e)(f)(g)()
        }
    }

    public static func mkEffFn8<A, B, C, D, E, F, G, H, R>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> () -> R) -> (A, B, C, D, E, F, G, H) -> R {
        return { a, b, c, d, e, f, g, h in
            return fn(a)(b)(c)(d)(e)(f)(g)(h)()
        }
    }

    public static func mkEffFn9<A, B, C, D, E, F, G, H, I, R>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> () -> R) -> (A, B, C, D, E, F, G, H, I) -> R {
        return { a, b, c, d, e, f, g, h, i in
            return fn(a)(b)(c)(d)(e)(f)(g)(h)(i)()
        }
    }

    public static func mkEffFn10<A, B, C, D, E, F, G, H, I, J, R>(_ fn: @escaping (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> () -> R) -> (A, B, C, D, E, F, G, H, I, J) -> R {
        return { a, b, c, d, e, f, g, h, i, j in
            return fn(a)(b)(c)(d)(e)(f)(g)(h)(i)(j)()
        }
    }

    public static func runEffFn1<A, R>(_ fn: @escaping (A) -> R) -> (A) -> () -> R {
        return { a in
            return {
                return fn(a)
            }
        }
    }

    public static func runEffFn2<A, B, R>(_ fn: @escaping (A, B) -> R) -> (A) -> (B) -> () -> R {
        return { a in
            return { b in
                return {
                    return fn(a, b)
                }
            }
        }
    }

    public static func runEffFn3<A, B, C, R>(_ fn: @escaping (A, B, C) -> R) -> (A) -> (B) -> (C) -> () -> R {
        return { a in
            return { b in
                return { c in
                    return {
                        return fn(a, b, c)
                    }
                }
            }
        }
    }

    public static func runEffFn4<A, B, C, D, R>(_ fn: @escaping (A, B, C, D) -> R) -> (A) -> (B) -> (C) -> (D) -> () -> R {
        return { a in
            return { b in
                return { c in
                    return { d in
                        return {
                            return fn(a, b, c, d)
                        }
                    }
                }
            }
        }
    }

    public static func runEffFn5<A, B, C, D, E, R>(_ fn: @escaping (A, B, C, D, E) -> R) -> (A) -> (B) -> (C) -> (D) -> (E) -> () -> R {
        return { a in
            return { b in
                return { c in
                    return { d in
                        return { e in
                            return {
                                return fn(a, b, c, d, e)
                            }
                        }
                    }
                }
            }
        }
    }

    public static func runEffFn6<A, B, C, D, E, F, R>(_ fn: @escaping (A, B, C, D, E, F) -> R) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> () -> R {
        return { a in
            return { b in
                return { c in
                    return { d in
                        return { e in
                            return { f in
                                return {
                                    return fn(a, b, c, d, e, f)
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static func runEffFn7<A, B, C, D, E, F, G, R>(_ fn: @escaping (A, B, C, D, E, F, G) -> R) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> () -> R {
        return { a in
            return { b in
                return { c in
                    return { d in
                        return { e in
                            return { f in
                                return { g in
                                    return {
                                        return fn(a, b, c, d, e, f, g)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static func runEffFn8<A, B, C, D, E, F, G, H, R>(_ fn: @escaping (A, B, C, D, E, F, G, H) -> R) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> () -> R {
        return { a in
            return { b in
                return { c in
                    return { d in
                        return { e in
                            return { f in
                                return { g in
                                    return { h in
                                        return {
                                            return fn(a, b, c, d, e, f, g, h)
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static func runEffFn9<A, B, C, D, E, F, G, H, I, R>(_ fn: @escaping (A, B, C, D, E, F, G, H, I) -> R) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> () -> R {
        return { a in
            return { b in
                return { c in
                    return { d in
                        return { e in
                            return { f in
                                return { g in
                                    return { h in
                                        return { i in
                                            return {
                                                return fn(a, b, c, d, e, f, g, h, i)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    public static func runEffFn10<A, B, C, D, E, F, G, H, I, J, R>(_ fn: @escaping (A, B, C, D, E, F, G, H, I, J) -> R) -> (A) -> (B) -> (C) -> (D) -> (E) -> (F) -> (G) -> (H) -> (I) -> (J) -> () -> R {
        return { a in
            return { b in
                return { c in
                    return { d in
                        return { e in
                            return { f in
                                return { g in
                                    return { h in
                                        return { i in
                                            return { j in
                                                return {
                                                    return fn(a, b, c, d, e, f, g, h, i, j)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
