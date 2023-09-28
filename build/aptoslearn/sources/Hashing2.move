module my_addrx::Hashing
{
    use std::hash;
    use std::bcs;
    use std::debug::print;

    fun hashing_in_move():vector<u8>
    {
        let x:vector<u8> = bcs::to_bytes<u64>(&10);
        let h = hash::sha2_256(x);
        h
    }

    #[test]
    fun test_Hash()
    {
        let tmp=hashing_in_move();
        print(&tmp);
    }
}

module std::Hashing2
{
    use std::aptos_hash;
    use std::bcs;
    use std::debug::print;

    fun hashing_in_move():vector<u8>
    {
        let x:vector<u8> = bcs::to_bytes<u64>(&10);
        let h = aptos_hash::keccak256(x);
        h
    }

    #[test]
    fun test_Hashing2()
    {
        let tmp=hashing_in_move();
        print(&tmp);
    }
}