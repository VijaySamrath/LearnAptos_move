// //using string module

// module my_addrx::Strings{
//     use std::debug;
//     use std::string::{String,utf8};

//     fun greeting():String{
//         let greet:String = utf8(b"Welcome to the move Language");
//         return greet
//     }

//     // #[test]
//     // fun testing(){
//     //     let greet=greeting();
//     //     debug::print(&greet);

//     // }
// }

// //using vector<u8> for representing byte string 

// module my_addrx::String{
//     use std::debug;
//     use std::string::utf8;

//     fun greeting():vector<u8>{
//         let greet:vector<u8> = b"Welcome to move language";
//         return greet
//     }

//     // #[test]
//     // fun testing(){
//     //     let greet=greeting();
//     //     debug::print(&greet);
//     //     debug::print(&utf8(greet));
//     // }
// }