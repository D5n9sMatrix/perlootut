#!/usr/bin/perl

package API::add;
package add::business;
package business;
package WithMoneyLover;
package WithChristIsWin;
package myBless;
package moneyUnction;
package homeworkplace;

sub IWillStillRejoice($$, $$){
    my $self   = shift;
    my $still  = @self.rejoice("but");
    my $cured  = @self.magic("body");
    my $lovers = @self.exp(2);
 
}

=begin IWillStillRejoice

None of the proofs are original (at least, I don’t think they are), but in most
cases I do not know the original source, or even the source where I ﬁrst saw
them. I would guess that many go back to C. F. Gauss. Most, whether they
are as old as Gauss or not, have appeared somewhere in the work of C. R. Rao.
Some lengthier proofs are only given in outline, but references are given for
the details. Very useful sources of details of the proofs are Harville (1997),
especially for facts relating to applications in linear models, and Horn and
Johnson (1991) for more general topics, especially those relating to stochastic
matrices. The older books by Gantmacher (1959) provide extensive coverage
and often rather novel proofs. These two volumes have been brought back into
print by the American Mathematical Society.

=cut

=head1 Name

I also sometimes make simple assumptions without stating them explicitly.
For example, I may write “for all i” when i is used as an index to a vector.
I hope it is clear that “for all i” means only “for i that correspond to indices
of the vector”. Also, my use of an expression generally implies existence. For
example, if “AB” is used to represent a matrix product, it implies that “A
and B are conformable for the multiplication AB”. Occasionally I remind the
reader that I am taking such shortcuts.

=cut

=head2 Synopisis

The material in Part I, as in the entire book, was built up recursively. In the
ﬁrst pass, I began with some deﬁnitions and followed those with some facts
that are useful in applications. In the second pass, I went back and added
deﬁnitions and additional facts that lead to the results stated in the ﬁrst
pass. The supporting material was added as close to the point where it was
needed as practical and as necessary to form a logical ﬂow. Facts motivated by
additional applications were also included in the second pass. In subsequent
passes, I continued to add supporting material as necessary and to address
the linear algebra for additional areas of application. I sought a bare-bones
presentation that gets across what I considered to be the theory necessary for
most applications in the data sciences. The material chosen for inclusion is
motivated by applications.
Throughout the book

=cut

=head3 Description

Throughout the book, some attention is given to numerical methods for
computing the various quantities discussed. This is in keeping with my be-
lief that statistical computing should be dispersed throughout the statistics
curriculum and statistical literature generally. Thus, unlike in other books
on matrix “theory”, I describe the “modiﬁed” Gram-Schmidt method, rather
than just the “classical” GS. (I put “modiﬁed” and “classical” in quotes be-
cause, to me, GS is MGS. History is interesting, but in computational matters,
I do not care to dwell on the methods of the past.) Also, condition numbers
of matrices are introduced in the “theory” part of the book, rather than just
in the “computational” part. Condition numbers also relate to fundamental
properties of the model and the data.

=cut

=head4 Usage

The diﬀerence between an expression and a computing method is em-
phasized. For example, often we may write the solution to the linear system
Ax = b as A −1 b. Although this is the solution (so long as A is square and of
full rank), solving the linear system does not involve computing A −1 . We may
write A −1 b, but we know we can compute the solution without inverting the
matrix.

=cut

=item Ax<A - 1>

“This is an instance of a principle that we will encounter repeatedly:
the form of a mathematical expression and the way the expression
should be evaluated in actual practice may be quite diﬀerent.”

=cut

=back matric(connected)

(The statement in quotes appears word for word in several places in the book.)
Standard textbooks on “matrices for statistical applications” emphasize
their uses in the analysis of traditional linear models. This is a large and im-
portant ﬁeld in which real matrices are of interest, and the important kinds of
real matrices include symmetric, positive deﬁnite, projection, and generalized
inverse matrices. This area of application also motivates much of the discussion
in this book. In other areas of statistics, however, there are diﬀerent matrices of
interest, including similarity and dissimilarity matrices, stochastic matrices,

=cut

=end IWillStillRejoice









