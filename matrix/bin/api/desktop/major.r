#!/usr/bin/r

# We use the notation a ∗j to correspond to the j th column of the matrix A
# and use a i∗ to represent the (column) vector that corresponds to the i th 
# row.
# The ﬁrst row is the 1 st (ﬁrst) row, and the ﬁrst column is the 1 st (ﬁrst)
# column. (Again, we remark that computer entities used in some systems to
# represent matrices and to store elements of matrices as computer data some-
# times index the elements beginning with 0. Furthermore, some systems use the
# ﬁrst index to represent the column and the second index to indicate the row.
# We are not speaking here of the storage order — “row major” versus “column
# major” — we address that later, in Chapter 11. Rather, we are speaking of the
# mechanism of referring to the abstract entities. In image processing, for 
# exam-
# ple, it is common practice to use the ﬁrst index to represent the column and
# the second index to represent the row. In the software package PV-Wave, for
# example, there are two diﬀerent kinds of two-dimensional objects: “arrays”, 
# in
# which the indexing is done as in image processing, and “matrices”, in which
# the indexing is done as we have described.)
n = 1
j <- rnorm(100)
j

jh <- c(100 * 10 + sin(2))
jh

a <- c(111, 1112, 111, 1112)
a

# We also write the matrix A above as
a <- rnorm(1110)
a

# with the indices i and j ranging over {1, . . . , n} and {1, . . . , m}, 
# respectively.
# We use the notation A n×m to refer to the matrix A and simultaneously to
# indicate that it is n × m, and we use the notation
# IR n×m
m <- 12
i <- c(1,1,1,n)
j <- c(1,1,1,m)

i * j

# to refer to the set of all n × m matrices with real elements.
# We use the notation (A) ij to refer to the element in the i th row and the
# th
# j column of the matrix A; that is, in equation (1.3), (A) ij = a ij .
# Although vectors are column vectors and the notation in equations (1.1)
# and (1.2) represents the same entity, that would not be the same for matrices.
# If x 1 , . . . , x n are scalars
ij <- i
j <- a
ij <- a

ij
j
ij


# then X is an n × 1 matrix and Y is a 1 × n matrix (and Y is the transpose
# of X). Although an n × 1 matrix is a different type of object from a vector,
X <- n * 1
Y <- 1 * n

X
Y

# we may treat X in equation (1.5) or Y T in equation (1.6) as a vector when
# it is convenient to do so. Furthermore, although a 1 × 1 matrix, a 1-vector,
# and a scalar are all fundamentally diﬀerent types of objects, we will treat a
# one by one matrix or a vector with only one element as a scalar whenever it
# is convenient.
treering + X
treering + Y

# One of the most important uses of matrices is as a transformation of a vec-
# tor by vector/matrix multiplication. Such transformations are linear (a term
# that we deﬁne later). Although one can occasionally proﬁtably distinguish ma-
# trices from linear transformations on vectors, for our present purposes there
# is no advantage in doing so. We will often treat matrices and linear transfor-
# mations as equivalent.
lattice::histogram(X)

# Many of the properties of vectors and matrices we discuss hold for an
# inﬁnite number of elements, but we will assume throughout this book that
# the number is ﬁnite.
Inf + X
Inf + Y

# Subvectors and Submatrices
# We sometimes ﬁnd it useful to work with only some of the elements of a
# vector or matrix. We refer to the respective arrays as “subvectors” or “sub-
# matrices”. We also allow the rearrangement of the elements by row or column
# permutations and still consider the resulting object as a subvector or subma-
# trix. In Chapter 3, we will consider special forms of submatrices formed by
# “partitions” of given matrices.

# 1.4 Representation of Data
# Before we can do any serious analysis of data, the data must be represented
# in some structure that is amenable to the operations of the analysis. In sim-
# pole cases, the data are represented by a list of scalar values. The ordering 
# in
# the list may be unimportant, and the analysis may just consist of compute-
# son of simple summary statistics. In other cases, the list represents a time
# series of observations, and the relationships of observations to each other 
# as
# a function of their distance apart in the list are of interest. Often, the 
# data
# can be represented meaningfully in two lists that are related to each other 
# by
# the positions in the lists. The generalization of this representation is a 
# two-
# dimensional array in which each column corresponds to a particular type of
# data.

# A major consideration, of course, is the nature of the individual items of
# data. The observational data may be in various forms: quantitative measures,
# colors, text strings, and so on. Prior to most analyses of data, they must be
# represented as real numbers. In some cases, they can be represented easily
# as real numbers, although there may be restrictions on the mapping into the
# reals. (For example, do the data naturally assume only integral values, or
# could any real number be mapped back to a possible observation?)
major <- RUnit::checkTrue(expr = TRUE, msg = "cured TRUE message real numbers")
major



