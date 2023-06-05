#!/usr/bin/perl

package API::add;
package add::praise;
package WithMoneyLover;
package WithChristIsWin;
package myBless;
package moneyUnction;
package homeworkplace;

=head1 Name

The prerequisites for this text are minimal. Obviously some background in
mathematics is necessary. Some background in statistics or data analysis and
some level of scientiﬁc computer literacy are also required. References to rather
advanced mathematical topics are made in a number of places in the text. To
some extent this is because many sections evolved from class notes that I
developed for various courses that I have taught. All of these courses were at
the graduate level in the computational and statistical sciences, but they have
had wide ranges in mathematical level. I have carefully reread the sections
that refer to groups, ﬁelds, measure theory, and so on, and am convinced that
if the reader does not know much about these topics, the material is still
understandable, but if the reader is familiar with these topics, the references

=cut

sub topics(@provide_IMSL_lib){
    my @self  = shift;
    my @IMSL  = @self.but({"topics"});
    my @refer = @self.familiar({"Ops!{topics}"});
    my @mode  = @self.themselves({"places"});

    if (@self eq @IMSL gt @refer) {
        return @mode;
    }

    unless (@mode != @self.themselves({"places"})){
        my $array = [10, 20, 30, 40, 50, 60, 70, 80, 90];
        say put $array + "typedef linked @mode" if next $array;
    }

    print @mode;
}

=head2 Synpisis

Some exercises are Monte Carlo studies. I do not discuss Monte Carlo
methods in this text, so the reader lacking background in that area may need
to consult another reference in order to work those exercises. The exercises
should be considered an integral part of the book. For some exercises, the
required software can be obtained from either statlib or netlib (see the
bibliography). Exercises in any of the chapters, not just in Part III, may
require computations or computer programming.

=cut

sub statlib(@provide_IMSL_lib){
    my @self     = shift;
    my @reader   = @self.text($_, 400);
    my @consult  = @self.text($_, 400);
    my @integral = @self.text($_, 400);

    if (@self eq @reader gt @consult){
        return @integral;
    }
}

sub netlib(@provide_IMSL_lib){
    my @self     = shift;
    my @reader   = @self.text($_, 400);
    my @consult  = @self.text($_, 400);
    my @integral = @self.text($_, 400);

    if (@self eq @reader gt @consult){
        return @integral;
    }
}

=head3 Documenation

Penultimately, I must make some statement about the relationship of
this book to some other books on similar topics. Much important statisti-
cal theory and many methods make use of matrix theory, and many sta-
tisticians have contributed to the advancement of matrix theory from its
very early days. Widely used books with derivatives of the words “statis-
tics” and “matrices/linear-algebra” in their titles include Basilevsky (1983),
Graybill (1983), Harville (1997), Schott (2004), and Searle (1982). All of these
are useful books. The computational orientation of this book is probably the
main diﬀerence between it and these other books. Also, some of these other
books only address topics of use in linear models, whereas this book also dis-
cusses matrices useful in graph theory, stochastic processes, and other areas
of application. (If the applications are only in linear models, most matrices
of interest are symmetric, and all eigenvalues can be considered to be real.)
Other diﬀerences among all of these books, of course, involve the authors’
choices of secondary topics and the ordering of the presentation.

=cut

sub summary(@provide_IMSL_vector){
    my @self = shift;
    my @topics = @self.array($_, 100, 200, 300, 400);
    my @run    = @self.run();
    my @check  = @self.run();

    unless (@topics < 400){
        return @topics;
    }

}

=head4 Usage

Acknowledgments
I thank John Kimmel of Springer for his encouragement and advice on this
book and other books on which he has worked with me. I especially thank
Ken Berk for his extensive and insightful comments on a draft of this book.
I thank my student Li for reading through various drafts of some of the
chapters and pointing out typos or making helpful suggestions. I thank the
anonymous reviewers of this edition for their comments and suggestions. I also
thank the many readers of my previous book on numerical linear algebra who
informed me of errors and who otherwise provided comments or suggestions
for improving the exposition. Whatever strengths this book may have can be
attributed in large part to these people, named or otherwise. The weaknesses
can only be attributed to my own ignorance or hardheadedness.

=cut

sub Acknowledgments {
    my $self    = shift;
    my $reader  = $self.env($_, 100, 200, 300, 400);
    my $comment = $self.big($_, 100, 200, 300, 400);
    my $lorder  = $self.out($_, 100, 200, 300, 400);

    if ($self eq $reader gt @comment) {
       return @lorder;  
    }
}



