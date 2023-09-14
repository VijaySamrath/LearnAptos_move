module my_addrx::Application
{
    use std::vector;
    use std::debug;
    use std::string::{String,utf8};

    struct Users has key,drop{
        list_of_user: vector<User> //storing the list of the users
    }

    struct User has store,drop,copy { //information required for a typical user
        name:String,
        age: u8
    }

        //creating a user by adding the user to the existing list and returning the user
    public fun create_user(newUser: User,users: &mut Users): User{
        vector::push_back(&mut users.list_of_user,newUser);
        return newUser
    }
    
    #[test]
    fun test_create_friend(){
        let user1 = User {
            name:utf8(b"Vijay"),
            age:30,
        };

        let users =Users{
            list_of_user: vector::empty<User>()
        };

        let createdUser = create_user(user1, &mut users);
        debug::print(&users);
        assert!(createdUser.name == utf8(b"Vijay"), 0);
    }
}