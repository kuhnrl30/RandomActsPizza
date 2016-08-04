#' Training dataset
#'
#' This dataset is the product of Exploratory Analysis where
#' he raw training dataset was downloaded and processed. Call
#' \code{vignette("ExploratoryAnalysis")} to see the documentation.
#' @name train
#' @docType data
#' @format dataframe with 4040 rows and 25 variables.
#' \itemize{
#' \item giver_username_if_known
#' \item request_id
#' \item requester_account_age_in_days_at_request
#' \item requester_days_since_first_post_on_raop_at_request
#' \item requester_number_of_comments_at_request
#' \item requester_number_of_comments_in_raop_at_request
#' \item requester_number_of_posts_at_request
#' \item requester_number_of_posts_on_raop_at_request
#' \item requester_number_of_subreddits_at_request
#' \item requester_subreddits_at_request
#' \item requester_upvotes_plus_downvotes_at_request
#' \item requester_username
#' \item requester_received_pizza
#' \item Year
#' \item weekday
#' \item Image
#' \item Acct.Age
#' \item BnRAOP
#' \item Words
#' \item Word.bin
#' }
NULL

#' Test dataset
#'
#' This dataset is the product of Exploratory Analysis where
#' he raw training dataset was downloaded and processed. Call
#' \code{vignette("ExploratoryAnalysis")} to see the documentation.
#' @docType data
#' @name test
#' @format dataframe with 1631 rows and 24 variables.
#' \itemize{
#' \item giver_username_if_known
#' \item request_id
#' \item requester_account_age_in_days_at_request
#' \item requester_days_since_first_post_on_raop_at_request
#' \item requester_number_of_comments_at_request
#' \item requester_number_of_comments_in_raop_at_request
#' \item requester_number_of_posts_at_request
#' \item requester_number_of_posts_on_raop_at_request
#' \item requester_number_of_subreddits_at_request
#' \item requester_subreddits_at_request
#' \item requester_upvotes_plus_downvotes_at_request
#' \item requester_username
#' \item Year
#' \item weekday
#' \item Image
#' \item Acct.Age
#' \item BnRAOP
#' \item Words
#' \item Word.bin
#' }
NULL


#' Random Acts of Pizza.
#'
#' To document the process used to compete in Kaggle's Random Acts of Pizza
#' competition. The raw data is downloaded from Dropbox and the analysis can be
#' seen though vignettes. The process uses a mix of time and text analyses.
#' Read the vingettes to follow the workflow.
#' @name RandomActsofPizza
#' @docType package
#' @author Ryan Kuhn, CPA
#' @import tm
#' @import SnowballC
#' @usage
#' vignette("ExploratoryAnalysis")
#' vignette("ModelBuilding")
#'
NULL
