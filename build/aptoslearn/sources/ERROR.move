module my_addrx::ERROR

{
    use std::debug::print;
    use std::string::utf8;

    fun isEven(num:u64)
    {
        if(num%2==0)
        {
            print(&utf8(b"No Error the number is even"));
        }
        else{
            abort 11 //throwing error as the given number is not even
        }
    }

    #[test]
    fun test_evenError()
    {
        isEven(2);
    }
}

module my_addrx::Errors
{
    fun iseven(num:u64)
    {
        assert!(num%2==0,11);
    }

    #[test]
    fun test_evenerror()
    {
        iseven(3);
    }
}

