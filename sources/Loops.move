module my_addrx::Loop
{
    use std::debug::print;
    //lets find the sum of first N natural numbers using while and infinite loop

    //using while loop
    fun sum_using_while(n:u64):u64
    {
        let sum = 0; 
        let i:u64=1; //setting counter to 1
        while(i <= n) //This Loop will run until the expression inside the round brackets is valid
        {
            sum = sum+i;
            i = i+1; //incrementing the counter
        }; //while is an expression therefore it should be end with a semicolon.
        sum //you can also return in functions like this.
    }

    fun sum_using_loop(n:u64): u64{
        let sum=0;
        let i:u64=1;
        loop
        {
            sum = sum + i;
            i=i+1;
            if(i>n)
            break;
        };
        sum
    }

    #[test]
    fun test_loop()
    {
        let sum = sum_using_loop(12);
        print(&sum);
        let sum = sum_using_while(12);
        print(&sum);
    }
}