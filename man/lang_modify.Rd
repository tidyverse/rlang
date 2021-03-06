% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lifecycle-retired.R
\name{lang_modify}
\alias{lang_modify}
\alias{lang_standardise}
\alias{lang_fn}
\alias{lang_name}
\alias{lang_args}
\alias{lang_args_names}
\title{Manipulate or access a call}
\usage{
lang_modify(.lang, ..., .standardise = FALSE)

lang_standardise(lang)

lang_fn(lang)

lang_name(lang)

lang_args(lang)

lang_args_names(lang)
}
\arguments{
\item{...}{<\link[=dyn-dots]{dynamic}> Named or unnamed expressions
(constants, names or calls) used to modify the call. Use \code{\link[=zap]{zap()}}
to remove arguments. Empty arguments are preserved.}

\item{.standardise}{Deprecated as of rlang 0.3.0. Please
call \code{\link[=call_match]{call_match()}} manually.}

\item{lang, .lang}{The \code{call} or \code{.call} argument of the renamed
functions.}
}
\description{
\ifelse{html}{\href{https://lifecycle.r-lib.org/articles/stages.html#deprecated}{\figure{lifecycle-deprecated.svg}{options: alt='[Deprecated]'}}}{\strong{[Deprecated]}}

These functions are deprecated, please use \code{\link[=call_modify]{call_modify()}},
\code{\link[=call_standardise]{call_standardise()}}, or \code{\link[=call_fn]{call_fn()}} instead.
}
\keyword{internal}
