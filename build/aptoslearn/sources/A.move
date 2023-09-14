// address my_addrx{
//     module A{
//         fun A_foo():u8{        //private function
//             return 123
//         }
//     }

//     module B{
//         fun B_foo():u8{
//         return my_addrx::A::A_foo()  //ERROR - as A_foo() is a private function 
//         }


//     #[test]
//     fun testing_B()
//     {
//         let number = B_foo();
//         print(&number);

//     }
// }
// }

address my_addrx{
    module A{
        public fun A_foo():u8 // public function
        {
            return 123
        }
    }

    module B{
        use std::debug::print;

        fun B_foo():u8{
            return my_addrx::A::A_foo()
        }

        #[test]
        fun testing_public()
        {
            let number=B_foo();    //Module B can call A_foo() as it is a public function
            print(&number);
        }
    }
}

// address my_addrx{
//     module X{
//         friend my_addrx::Y;

//         public(friend) fun X_foo():u8{
//             return 123
//         }
//     }

//     module Y{
//         fun Y_foo():u8{
//             return my_addrx::X::X_foo() //Module Y can call X_foo() as Y is in friend list of X
//         }
//     }

//     module Z{
//         fun Z_foo():u8{
//             return my_addrx::X::X_foo() //ERROR - as module Z is not in friend list of X
//         }
//     }
// }


module my_addrx::E{
    use std::debug::print;
    use std::string::utf8;

    public entry fun foo(){
        print(&utf8(b"This is an entry function"));
    }

    #[test]
    fun test_entry()
    {
        foo();
    }

}
