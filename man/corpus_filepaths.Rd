\name{corpus_filepaths}
\alias{corpus_filepaths}

\title{Returns the absolute filepaths to corpus text files.}

\description{
    Returns file paths to the corpus texts; the locations of which are
    not always transparent to the user.
}

\usage{
    corpus_filepaths(corpus, title = NULL)
}

\arguments{
    \item{corpus}{
        The name of the corpus.
        Can be \sQuote{DNov} or \sQuote{19C}.
    }
    \item{title}{
        Either a character string or a vector of character strings
        representing the novel titles.
        If \code{title} is not given then all paths for the corpus
        are returned.
        \code{title} values are first checked against the title abbreviations
        and then against the full titles. Any unique partial match is allowed, for example
        'the mill' would match 'The Mill on the Floss'.
    }
}

\value{
    \code{corpus_filepaths} returns a single filepath as a string, or
    multiple filepaths as a vector of strings.
    When a vector is returned the name attributes are the title abbreviations.
}

\examples{
    all_paths <- corpus_filepaths('DNov')

    some_paths <- corpus_filepaths('DNov', title = c('Great Expectations', 'A Tale of Two Cities'))

    a_path <- corpus_filepaths('DNov', title = 'GE')
}
