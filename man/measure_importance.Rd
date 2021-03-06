% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/measure_importance.R
\name{measure_importance}
\alias{measure_importance}
\title{Importance of variables in a random forest}
\usage{
measure_importance(forest, mean_sample = "top_trees", measures = NULL)
}
\arguments{
\item{forest}{A random forest produced by the function randomForest with option localImp = TRUE}

\item{mean_sample}{The sample of trees on which mean minimal depth is calculated, possible values are "all_trees", "top_trees", "relevant_trees"}

\item{measures}{A vector of names of importance measures to be calculated - if equal to NULL then all are calculated;
if "p_value" is to be calculated then "no_of_nodes" will be too. Suitable measures for \code{classification} forests are:
\code{mean_min_depth}, \code{accuracy_decrease}, \code{gini_decrease}, \code{no_of_nodes},
\code{times_a_root}. For \code{regression} forests choose from: \code{mean_min_depth},
\code{mse_increase}, \code{node_purity_increase}, \code{no_of_nodes}, \code{times_a_root}.}
}
\value{
A data frame with rows corresponding to variables and columns to various measures of importance of variables
}
\description{
Get a data frame with various measures of importance of variables in a random forest
}
\examples{
forest <- randomForest::randomForest(Species ~ ., data = iris, localImp = TRUE, ntree = 300)
measure_importance(forest)

}
