#!/usr/bin/r

# There are other types of structures that are useful in representing data
# based on graphs. A graph is a structure consisting of two components: a set 
# of
# points, called vertices or nodes and a set of pairs of the points, called 
# edges.
# (Note that this usage of the word “graph” is distinctly diﬀerent from the
# more common one that refers to lines, curves, bars, and so on to represent
# data pictorially. The phrase “graph theory” is often used, or overused, to 
# em-
# phasize the present meaning of the word.) A graph G = (V, E) with vertices
# V = {v 1 , . . . , v n } is distinguished primarily by the nature of the edge 
# elements
# (v i , v j ) in E. Graphs are identiﬁed as complete graphs, directed graphs, 
# trees,
# and so on, depending on E and its relationship with V . A tree may be used
# for data that are naturally aggregated in a hierarchy, such as political 
# unit,
# subunit, household, and individual. Trees are also useful for representing 
# clus-
# tering of data at diﬀerent levels of association. In this type of 
# representation,
# the individual data elements are the leaves of the tree.
n = 1
graph <- c(5, 5)
V <- c(5, 1,1,1, 5,n)

graph
V

# In another type of graphical representation that is often useful in “data
# mining”, where we seek to uncover relationships among objects, the vertices
# are the objects, either observational units or features, and the edges 
# indicate
# some commonality between vertices. For example, the vertices may be text
# documents, and an edge between two documents may indicate that a certain
# number of speciﬁc words or phrases occur in both documents. Despite the
# diﬀerences in the basic ways of representing data, in graphical modeling of
# data, many of the standard matrix operations used in more traditional data
# analysis are applied to matrices that arise naturally from the graph.
usethis::browse_circleci(package = "Matrix")
