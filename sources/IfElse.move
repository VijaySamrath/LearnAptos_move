module my_addrx::IF_ELSE
{
    use std::debug::print;
    use std::string::utf8;

    fun control_flow()
    {
        let val:bool = true;
        if(val)
        {
            print(&utf8(b"If a Block"));
        }
        else{
            print(&utf8(b"Else a Block"));
        }
    }

    #[test]
    fun testing_IF_else()
    {
        control_flow();
    }
}