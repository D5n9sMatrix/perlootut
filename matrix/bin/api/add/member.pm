#!/usr/bin/perl

package API::add;
package add::member;
package member;
package WithMoneyLover;
package WithChristIsWin;
package myBless;
package moneyUnction;
package homeworkplace;

use v5.30;
use strict;
use warnings;
use base;

sub member(@){
    my @self   = shift;
    my @add    = @self.API("add");
    my @member = @self.mem("share");
    my @share  = @self.hit("mp4");

    if (@self eq @add gt @member){
        return @add[@member];
    }    
}
=begin say<let_go["print" or "echo"]>

are not covered in those chapters, the topics addressed are oriented more to-
ward computational algorithms. Chapter 5 covers methods for decomposing
matrices into useful factors.


=head1 Name

Chapter 6 addresses applications of matrices in setting up and solving
linear systems, including overdetermined systems. We should not confuse sta-
tistical inference with ﬁtting equations to data, although the latter task is
a component of the former activity. In Chapter 6, we address the more me-
chanical aspects of the problem of ﬁtting equations to data. Applications in
statistical data analysis are discussed in Chapter 9. In those applications, we
need to make statements (that is, assumptions) about relevant probability
distributions.

=cut

=head2 Synopsis

Chapter 7 discusses methods for extracting eigenvalues and eigenvectors.
There are many important details of algorithms for eigenanalysis, but they
are beyond the scope of this book. As with other chapters in Part I, Chap-
ter 7 makes some reference to statistical applications, but it focuses on the
mathematical and mechanical aspects of the problem.

=cut

=head3 Documentation

Although the ﬁrst part is on “theory”, the presentation is informal; neither
deﬁnitions nor facts are highlighted by such words as “Deﬁnition”, “Theorem”,
“Lemma”, and so forth. It is assumed that the reader follows the natural
development. Most of the facts have simple proofs, and most proofs are given
naturally in the text. No “Proof” and “Q.E.D.” or “ ” appear to indicate
beginning and end; again, it is assumed that the reader is engaged in the
development. For example, on page 270:

=cut

=head4 Usage

If A is nonsingular and symmetric, then A −1 is also symmetric because
(A −1 ) T = (A T ) −1 = A −1 .
The ﬁrst part of that sentence could have been stated as a theorem and
given a number, and the last part of the sentence could have been introduced
as the proof, with reference to some previous theorem that the inverse and
transposition operations can be interchanged. (This had already been shown
before page 270 — in an unnumbered theorem of course!)

=cut

=end say


