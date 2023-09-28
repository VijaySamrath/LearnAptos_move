// Inside a module

module my_addrx::example {
    use std::vector;

    fun example(): vector<u8> {
        let v = empty();
        vector::push_back(&mut v, 0);
        vector::push_back(&mut v, 10);
        v
    }

    use std::vector::empty;
}

// Inside an Expression:

module my_addrx::xample {
    fun xample(): vector<u8> {
        use std::vector::{empty, push_back};

        let v = empty();
        push_back(&mut v, 0);
        push_back(&mut v, 10);
        v
    }
}

