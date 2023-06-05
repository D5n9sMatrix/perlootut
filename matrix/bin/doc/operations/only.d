module matrix.bin.doc.operations.only;

import only;
import matrix;
import std;

/*
Essentially Disjoint Vector Spaces
If the only element in common between two vector spaces V 1 and V 2 is the
additive identity, the spaces are said to be essentially disjoint. If the vector
spaces V 1 and V 2 are essentially disjoint, it is clear that any element in V 1
(except the additive identity) is linearly independent of any set of elements
in V 2 .
*/

void main(string[] args)
{
    // states burn compile fire
    class vector(x)
    {
        interface element : x
        {
            int v1 = vector(x);        
        }
    }
    // compile body matrix
    class vector(y)
    {
        interface element : y
        {
            int v2 = vector(y);        
        }
    }
}

/*
Some Special Vectors
We denote the additive identity in a vector space of order n by 0 n or sometimes
by 0. This is the vector consisting of all zeros. We call this the zero vector.
This vector by itself is sometimes called the null vector space. It is not a vector
space in the usual sense; it would have dimension 0. (All linear combinations
are the same.)
*/
void divMod(const BigInt dividend, 
const BigInt divisor, BigInt quotient, BigInt remainder)(referer n)
{
    class n(zero)
    {
        interface element : zero
        {
            n * element(zero);
        }
    }
}

/*
Likewise, we denote the vector consisting of all ones by 1 n or sometimes by
1. We call this the one vector and also the “summing vector” (see page 23).
This vector and all scalar multiples of it are vector spaces with dimension
1. (This is true of any single nonzero vector; all linear combinations are just
scalar multiples.) Whether 0 and 1 without a subscript represent vectors or
scalars is usually clear from the context.
The i th unit vector, denoted by e i , has a 1 in the i th position and 0s in all
other positions:
(2.3)
e i = (0, . . . , 0, 1, 0, . . . , 0).
*/
void either(Task, TaskStatus)(stdin vector[scalbn])
{
    class summing(vector)
    {
        interface scalar(x)
        {
            scalbn x(endian);
        }
    }
}

/*
Another useful vector is the sign vector, which is formed from signs of the
elements of a given vector. It is denoted by “sign(·)” and deﬁned by
*/
void signbit(Xorshift X)(X x)
{
    class sign(x)
    {
        interface X : sign
        {
            X sign(x);
        }
        interface X : x
        {
            X x;              
        }
    }
}
/*
Ordinal Relations among Vectors
There are several possible ways to form a rank ordering of vectors of the same
order, but no complete ordering is entirely satisfactory. (Note the unfortunate
overloading of the word “order” or “ordering” here.) If x and y are vectors of
the same order and for corresponding elements x i > y i , we say x is greater
than y and write
x > y.
*/
void Order(ordered here)(x y)
{
    class x
    {
        interface y : x
        {
            int x = 0;
            int y = 1;            
        }
    }
}


