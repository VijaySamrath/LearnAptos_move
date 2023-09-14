module my_addrx::Functions
{
    use std::debug::print;
    use std::string::utf8;

    fun  greet()
    {
        print (&utf8(b"Function in move language"));
    }

    fun square(num : u64)
    {
        let s = num*num;
        print(&s);
    }

    fun max(num1 : u64,num2 : u64): u64{
        if(num1 < num2)
            return num2
        else
         return num1
    }

    fun is_Even(num : u64) : (u64, bool)
    {
        if(num % 2 == 0)
        return (num, true)
        else
        return (num,false)
    }

    #[test]
    fun fun_testing()
    {
        greet();
        square(6);

        let m = max(50,62);
        print(&m);

        let (v1,v2) = is_Even(6);
        print(&v1);
        print(&v2);
    }
}