library(igraph)
library(dplyr)
library(rgexf)
library(d3Network)
library(qgraph)

graph <- graph.adjacency(co_occurrence,
                         weighted=TRUE,
                         mode="undirected",
                         diag=FALSE)


require(qgraph)
qgraph(m)
qgraph(m,edge.labels=TRUE)  #if you want the weights on the edges as well


library(igraph)

# Make up data
relations <- data.frame(from=c("Bob", "Cecil", "Cecil", "David", "David", "Esmeralda"),
                        to=c("Alice", "Bob", "Alice", "Alice", "Bob", "Alice"),
                        weight=c(4,5,5,2,1,1))
# Alternatively, you could read in the data from a similar CSV file as follows:
# relations <- read.csv("relations.csv")
g <- graph.data.frame(relations, directed=TRUE)
# Load (DIRECTED) graph from data frame 


# Plot graph
plot(g, edge.width=E(g)$weight)

# Load package
library(networkD3)

# Create fake data
src <- c("A", "A", "A", "A",
         "B", "B", "C", "C", "D")
target <- c("B", "C", "D", "J",
            "E", "F", "G", "H", "I")
networkData <- data.frame(src, target)

# Plot
simpleNetwork(networkData)

g <- graph.adjacency(v, weighted=TRUE, mode ='undirected')
g <- simplify(g)
# set labels and degrees of vertices
V(g)$label <- V(g)$name
V(g)$degree <- degree(g)
plot(g)

# rgexf
nNodes <- 100
nRelations <- 200

nodes <- data.frame(id = c(1:nNodes),
                    names = c(1:nNodes))

lesmiserables <- read.gexf("http://gephi.org/datasets/LesMiserables.gexf")
summary(lesmiserables)

betweenness(graph, v=V(graph), directed = TRUE, weights = NULL,
            nobigint = TRUE, normalized = FALSE)
edge.betweenness(graph, e=E(graph), directed = TRUE, weights = NULL)
betweenness.estimate(graph, vids = V(graph), directed = TRUE, cutoff,
                     weights = NULL, nobigint = TRUE)
edge.betweenness.estimate(graph, e=E(graph),
                          directed = TRUE, cutoff, weights = NULL)

graph.adjacency(adjmatrix, mode=c("directed", "undirected", "max",
                                  "min", "upper", "lower", "plus"), weighted=NULL, diag=TRUE,
                add.colnames=NULL, add.rownames=NA)

install.packages('qgraph')
require(qgraph)
qgraph(m)
qgraph(m,edge.labels=TRUE)  #if you want the weights on the edges as well

An htmlwidget works just like an R plot except it produces an interactive web visualization. A line or two of R code is all it takes to produce a D3 graphic or Leaflet map. Widgets can be used at the R console as well as embedded in R Markdown reports and Shiny web applications. Here’s an example of using leaflet directly from the R console: