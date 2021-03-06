% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/regression.R
\name{plot.reg_predict}
\alias{plot.reg_predict}
\title{Plot method for the predict.regression function}
\usage{
\method{plot}{reg_predict}(x, xvar = "", facet_row = ".", facet_col = ".",
  color = "none", conf_lev = 0.95, ...)
}
\arguments{
\item{x}{Return value from \code{\link{predict.regression}}.}

\item{xvar}{Variable to display along the X-axis of the plot}

\item{facet_row}{Create vertically arranged subplots for each level of the selected factor variable}

\item{facet_col}{Create horizontally arranged subplots for each level of the selected factor variable}

\item{color}{Adds color to a scatter plot to generate a heat map. For a line plot one line is created for each group and each is assigned a different colour}

\item{conf_lev}{Confidence level to use for prediction intervals (.95 is the default). Note that the error bars for predicitions are approximations at this point.}

\item{...}{further arguments passed to or from other methods}
}
\description{
Plot method for the predict.regression function
}
\details{
See \url{http://vnijs.github.io/radiant/quant/regression.html} for an example in Radiant
}
\examples{
result <- regression("diamonds", "price", c("carat","clarity"))
pred <- predict(result, pred_cmd = "carat = 1:10")
plot(pred, xvar = "carat")
result <- regression("diamonds", "price", c("carat","clarity"), int = "carat:clarity")
dpred <<- getdata("diamonds") \%>\% slice(1:100)
pred <- predict(result, pred_data = "dpred")
plot(pred, xvar = "carat", color = "clarity")
rm(dpred, envir = .GlobalEnv)

}
\seealso{
\code{\link{regression}} to generate the result

\code{\link{summary.regression}} to summarize results

\code{\link{plot.regression}} to plot results

\code{\link{predict.regression}} to generate predictions
}

