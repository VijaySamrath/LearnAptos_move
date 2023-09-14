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


/*Constants must start with a capital letter A to Z.

// //Valid
// const Foo:u64=123;
// const Flag:bool=true; 
// const My_Addrx:address=@my_addrx;

// //Invalid;
// const x:u8=10;
// const flag:bool=false;
// const my_addrx:address=@my_addrx;