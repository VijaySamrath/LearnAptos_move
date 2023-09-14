module my_addrx::constant
{
    use std::debug::print;

    //some Example

    const X:u64=10;
    const Y:address=@my_addrx;
    const Z:bool=false;

    fun constants(){
        print(&X);
        print(&Y);
        print(&Z);
    }

    #[test]
    fun test_const()
    {
        constants();
    }
}