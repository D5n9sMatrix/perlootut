module matrix.bin.doc.operations.linear;

import object;
import matrix;
import std;

/*
then a 1 = · · · = a k = 0. If the set of vectors {v 1 , . . . , v k } is not linearly inde-
pendent, then it is possible to select a maximal linearly independent subset;
that is, a subset of {v 1 , . . . , v k } that is linearly independent and has maxi-
mum cardinality. We do this by selecting an arbitrary vector, v i 1 , and then
seeking a vector that is independent of v i 1 . If there are none in the set that
is linearly independent of v i 1 , then a maximum linearly independent subset
is just the singleton, because all of the vectors must be a linear combination
of just one vector (that is, a scalar multiple of that one vector). If there is a
vector that is linearly independent of v i 1 , say v i 2 , we next seek a vector in the
remaining set that is independent of v i 1 and v i 2 . If one does not exist, then
{v i 1 , v i 2 } is a maximal subset because any other vector can be represented in
terms of these two and hence, within any subset of three vectors, one can be
represented in terms of the two others. Thus, we see how to form a maximal
*/

void main(string[] args)
{
    class A1 {
        interface editors
        {
            void valid(string units)(int values); // values 1,2,3,4 
        }
    }
}

/*
linearly independent subset, and we see that the maximum cardinality of any
subset of linearly independent vectors is unique.
It is easy to see that the maximum number of n-vectors that can form a
set that is linearly independent is n. (We can see this by assuming n linearly
independent vectors and then, for any (n + 1) th vector, showing that it is
a linear combination of the others by building it up one by one from linear
combinations of two of the given linearly independent vectors. In Exercise 2.1,
you are asked to write out these steps.)
*/
void SO_TYPE(write[] n)(refcount n)
{
    class n
    {
        interface A1: n
        {
            void write(n)(RealFormat);
        }
    }
}

/*
Properties of a set of vectors are usually invariant to a permutation of the
elements of the vectors if the same permutation is applied to all vectors in the
set. In particular, if a set of vectors is linearly independent, the set remains
linearly independent if the elements of each vector are permuted in the same
way.
*/
void validPredicates(Protocol[] vectors)(input[vectors])
{
   class linears
   {
       interface vectors
       {
           make * in_addr(addrinfo[apr]);
       }
   }
}

/*
If the elements of each vector in a set of vectors are separated into sub-
vectors, linear independence of any set of corresponding subvectors implies
linear independence of the full vectors. To state this more precisely for a set
of three n-vectors, let x = (x 1 , . . . , x n ), y = (y 1 , . . . , y n ), and z = (z 1 , . . . , z n ).
Now let {i 1 , . . . , i k } ⊂ {1, . . . , n}, and form the k-vectors x̃ = (x i 1 , . . . , x i k ),
ỹ = (y i 1 , . . . , y i k ), and z̃ = (z i 1 , . . . , z i k ). Then linear independence of x̃, ỹ,
and z̃ implies linear independence of x, y, and z.
*/

void names(string[] n)(referer)
{
   class n
   {
       interface Yik : n
       {
           zero fit(n);
       }
   }
}

/*
2.1.2 Vector Spaces and Spaces of Vectors
Let V be a set of n-vectors such that any linear combination of the vectors in
V is also in V . Then the set together with the usual vector algebra is called a
vector space. (Technically, the “usual algebra” is a linear algebra consisting of
two operations: vector addition and scalar times vector multiplication, which
are the two operations comprising an axpy. It has closure of the space under
the combination of those operations, commutativity and associativity of addi-
tion, an additive identity and inverses, a multiplicative identity, distribution of
multiplication over both vector addition and scalar addition, and associativity
of scalar multiplication and scalar times vector multiplication. Vector spaces
are linear spaces.) A vector space necessarily includes the additive identity.
(In the axpy operation, let a = −1 and y = x.)
*/

void AF_IPX(addrinfo[] ai_addr)(a y[Xorshift])
{
    class a
    {
        interface y : a
        {
            int a = -1;
            int y = Xorshift;
        }
    }
}

