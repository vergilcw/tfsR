% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createTFSRepository.R
\name{createTFSRepository}
\alias{createTFSRepository}
\title{Setup a git repository in an existing TFS (Git) Project}
\usage{
createTFSRepository(URL, Credentials, ParentProject, NewRepo, ...,
  URLSub = "DefaultCollection")
}
\arguments{
\item{URL}{URL for root TFS e.g. http://stephlocke.visualstudio.com}

\item{Credentials}{\code{TFSAuth} object}

\item{ParentProject}{Name of parent project to store repository in}

\item{NewRepo}{Name for new repository}

\item{...}{Additional arguments to httr::POST}

\item{URLSub}{Modify this if you need to reference somewhere other than DefaultCollection}
}
\value{
RepoURL    String containing location of repository
}
\description{
This produces a repository and returns the URL that can 
be used for pushing/pulling
}
\examples{
tfs        <- "https://stephlocke.visualstudio.com"
authcreds  <- TFSAuth(pwd="fz43enydh7vi2o6jqir2gmftohh7ooz2lizqvy6jxtw4ltrpwola")
parentproj <- "tfsr3"
newrepo    <- as.character(random::randomStrings(n=1, len=6))

createdrepo  <- createTFSRepository(tfs,authcreds,parentproj,newrepo)
deleted<-deleteTFSRepository(tfs,authcreds,newrepo)
}
\keyword{list}
\keyword{repository}
\keyword{tfs}

