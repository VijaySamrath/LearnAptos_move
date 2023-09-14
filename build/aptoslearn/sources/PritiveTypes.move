module my_addrx::PritiveTypes
{
    use std::debug::print;

    fun primitive_types() {

        //Integers: u8, u64,u128
        let a:u8=10;
        let b:u64=1000;
        let c:u128=10000;

        print(&a); print(&b); print(&c);

        //Boolean: true, false
        let b1:bool=true;
        let b2:bool=false;
        print(&b1); print(&b2);

        //Address: adresses in move reperesent 
        let addx1:address=@std;
        let addx2:address=@0x123;
        print(&addx1); print(&addx2);
    

    }

    #[test]
    fun test_primitive_types() {
        primitive_types();
    }
}