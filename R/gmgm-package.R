#' Gaussian mixture graphical model learning and inference
#'
#' This package provides a complete framework to deal with Gaussian mixture
#' graphical models, which include Bayesian networks and dynamic Bayesian
#' networks (their temporal extension) whose local probability distributions are
#' described by Gaussian mixture models. A wide range of functions are
#' implemented for:
#' \itemize{
#' \item creating Gaussian mixture models: \code{\link{add_var}},
#' \code{\link{gmm}}, \code{\link{merge_comp}}, \code{\link{remove_var}},
#' \code{\link{rename_var}}, \code{\link{reorder}}, \code{\link{split_comp}};
#' \item manipulating Gaussian mixture models: \code{\link{AIC}},
#' \code{\link{BIC}}, \code{\link{conditional}}, \code{\link{density}},
#' \code{\link{expectation}}, \code{\link{logLik}}, \code{\link{sampling}},
#' \code{\link{summary}};
#' \item learning Gaussian mixture models: \code{\link{em}}, \code{\link{smem}},
#' \code{\link{stepwise}};
#' \item visualizing Gaussian mixture models: \code{\link{ellipses}};
#' \item creating Gaussian mixture graphical models:
#' \code{\link{add_arcs}}, \code{\link{add_nodes}}, \code{\link{gmbn}},
#' \code{\link{gmdbn}}, \code{\link{remove_arcs}}, \code{\link{remove_nodes}},
#' \code{\link{rename_nodes}};
#' \item manipulating Gaussian mixture graphical models: \code{\link{AIC}},
#' \code{\link{BIC}}, \code{\link{logLik}}, \code{\link{structure}},
#' \code{\link{summary}};
#' \item learning Gaussian mixture graphical models: \code{\link{param_em}},
#' \code{\link{param_learn}}, \code{\link{struct_em}},
#' \code{\link{struct_learn}};
#' \item performing inference in Gaussian mixture graphical models:
#' \code{\link{aggregation}}, \code{\link{filtering}}, \code{\link{inference}},
#' \code{\link{particles}}, \code{\link{prediction}}, \code{\link{propagation}},
#' \code{\link{smoothing}};
#' \item visualizing Gaussian mixture graphical models: \code{\link{network}}.
#' }
#' Descriptions of these functions are provided in this manual with related
#' references. Most of the algorithms are described in the PhD thesis of Roos
#' (2018, in french). To better handling this package, two real-world datasets
#' are also provided (\code{\link{data_air}}, \code{\link{data_body}}) with
#' examples of Gaussian mixture models and graphical models
#' (\code{\link{gmbn_body}}, \code{\link{gmdbn_air}}, \code{\link{gmm_body}}).
#'
#' @references
#' Roos, J. (2018). \emph{\ifelse{html}{\out{Pr&eacute;vision a court terme des
#' flux de voyageurs : une approche par les r&eacute;seaux
#' bay&eacute;siens}}{Prévision a court terme des flux de voyageurs : une
#' approche par les réseaux bayésiens}}. PhD thesis, University of Lyon.
#'
#' @docType package
#' @name gmgm-package
#'
#' @import dplyr
#' @import ggplot2
#' @import purrr
#' @import stringr
#' @import tidyr
#' @import visNetwork
#' @importFrom rlang :=
#' @importFrom stats AIC BIC logLik na.omit rnorm runif

NULL

globalVariables(c(".", "comp", "from", "from_lag", "from_new", "movable", "to",
                  "var_x", "var_y"))
