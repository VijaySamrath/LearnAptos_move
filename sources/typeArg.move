// // fun foo() {
// //     let x = id<bool>(true);
// // }

// //calling generic function

// // fun foo() {
// //     let foo = Foo<bool> { x: true };
// //     let Foo<bool> { x } = foo;
// // }

// module my_addrx::M

// {
//     struct Currency1 {}
//     struct Currency2 {}

//     // A generic coin type that can be instantiated using a currency
//     // specifier type.
//     //   e.g. Coin<Currency1>, Coin<Currency2> etc.

//     struct Coin<Currency> has store {
//         value: u64
//     }

//     public fun mint_generic<Currency>(value: u64): Coin<Currency> {
//         Coin { value }
//     }

//     public fun mint_concrete(value: u64): Coin<Currency> {
//         Coin { Value }
//     }
// }