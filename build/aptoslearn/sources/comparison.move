module my_addrx::Operations
{
    use std::debug::print;

    fun arthmetic_operations(a:u64,b:u64){
        let ans=a+b; print(&ans);
        let ans=a-b; print(&ans);
        let ans=a*b; print(&ans);
        let ans=a/b; print(&ans);
        let ans=a%b; print(&ans);
    }

    #[test]
    fun test_Oper() {
        arthmetic_operations(10,3);
    }
}

module my_addrx::Bitwise
{
    use std::debug::print;

    fun bitwise_operations(a:u64,b:u64)
    {
        let ans=a|b; print(&ans);
        let ans=a&b; print(&ans);
        let ans=a^b; print(&ans);
    }
    #[test]
    fun test_Bit()
    {
        bitwise_operations(1,0);
    }
}

module my_addrx::Bitshift
{
    use std::debug::print;

    fun bitshift_Operation(a:u64)
    {
        let ans=a>>2; print(&ans);
        let ans=a<<2; print(&ans);
    }

       #[test]
    fun test_Bit()
    {
        bitshift_Operation(2);
    }
}

module my_addrx::comparison
{
    use std::debug::print;

    fun comparison_operation(a:u64,b:u64){
        let ans=a < b; print(&ans);
        let ans=a > b; print(&ans);
        let ans=a <= b; print(&ans);
        let ans=a >= b; print(&ans);
    }
         #[test]
    fun test_Bit()
    {
        comparison_operation(2,8);
    }
}

module my_addrx::Equality
{
        use std::debug::print;
    fun equality_Operation(a:u64,b:u64){
        let ans=a == b; print(&ans);
        let ans= a != b; print(&ans);
    }

    #[test]
    fun test_equality(){
        equality_Operation(10,14);
    }
}


