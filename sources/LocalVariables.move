// module my_addrx::Variable
// {
//     use std::debug::print;

//     fun local_variables()
//     {
//         let b:u8;
//         let c=false;
//         let d=b"Hello world";
//         let e:u64=10000;
//         let f:address = @my_addrx;
//         print(&d);
//     }

//     #[test]
//     fun test_localvar(){
//        local_variables();
//     }
// }

//Multiple Declaration

//valid
// let(x,y,z) = (1,@0x1,false);

//InValid

// let (p,q) = (1,2,3,4);

// Though you have one way to 
// mark variable as intentionally 
// unused - by using underscore _.

// module my_addrx::variable
// {
//     fun local_variable()
//     {
//         let _=1; //compiling this module will not result in error
        
//         let b=10;
//         _=b;    //This is called shadowing
//     }
// }