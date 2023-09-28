module my_addrx::Generics
{
    //a generic identity function that takes a value of any type and returns that value unchanged
    fun example<T>(num: T): T {
        num
    }

    #[test]
    fun testing_generic()
    {
        let x:u64 = example<u64>(10);
        let y:bool = example<bool>(true);

        assert!(x==10,1);
        assert!(y==true,1);
    }
}

// struct Foo<T> has copy, drop { x: T }

// struct Bar<T1, T2> has copy, drop {
//     x: T1,
//     y: vector<T2>,
// }