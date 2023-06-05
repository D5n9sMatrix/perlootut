#!/usr/bin/perl

package API::money;
package money::update;
package update;

use v5.30;
use strict;
use warnings;
use base;

sub update(@){
    my @self = shift;
    my @safe = @self.up();     # local safe ambient home
    my @kids = @self.cured();  # cured body
    my @main = @self.magic();  # magic cured body

    if (@self eq @kids gt @safe){
        @self.pages; # foss factors      
    } else {
        return @self.exp(); # expert kids
    } 

}



=begin topcat

I began this book as an update of Numerical Linear Algebra for Applications
in Statistics, published by Springer in 1998. There was a modest amount of
new material to add, but I also wanted to supply more of the reasoning behind
the facts about vectors and matrices. I had used material from that text in
some courses, and I had spent a considerable amount of class time proving
assertions made but not proved in that book. As I embarked on this project,
the character of the book began to change markedly. In the previous book,
I apologized for spending 30 pages on the theory and basic facts of linear
algebra before getting on to the main interest: numerical linear algebra. In
the present book, discussion of those basic facts takes up over half of the book.

=head1 Name

The orientation and perspective of this book remains numerical linear al-
gebra for applications in statistics. Computational considerations inform the
narrative. There is an emphasis on the areas of matrix analysis that are im-
portant for statisticians, and the kinds of matrices encountered in statistical
applications receive special attention.

=cut

=head2 Synopisis

This book is divided into three parts plus a set of appendices. The three
parts correspond generally to the three areas of the book’s subtitle — theory,
computations, and applications — although the parts are in a diﬀerent order,
and there is no ﬁrm separation of the topics.

=cut

=head3 Description

Part I, consisting of Chapters 1 through 7, covers most of the material
in linear algebra needed by statisticians. (The word “matrix” in the title of
the present book may suggest a somewhat more limited domain than “linear
algebra”; but I use the former term only because it seems to be more commonly
used by statisticians and is used more or less synonymously with the latter
term.)

=cut

=head4 Usage

The ﬁrst four chapters cover the basics of vectors and matrices, concen-
trating on topics that are particularly relevant for statistical applications. In
Chapter 4, it is assumed that the reader is generally familiar with the basics of
partial diﬀerentiation of scalar functions. Chapters 5 through 7 begin to take
on more of an applications ﬂavor, as well as beginning to give more consid-
eration to computational methods. Although the details of the computations

=cut

=end topcat



