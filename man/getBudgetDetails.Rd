% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getBudgetDetails.R
\name{getBudgetDetails}
\alias{getBudgetDetails}
\title{Get budget details}
\arguments{
\item{i}{name of endpoint (one of: "accounts", "categories", "months", "payees", "payee_locations", "subcategories", "scheduled_transactions", "transactions")}

\item{param.token}{Your YNAB API personal access token}

\item{param.budgetid}{The ID associated with the selected budget}
}
\description{
Gets the following YNAB data for a pre-specified budget:
 "accounts", "categories", "months", "payees", "payee_locations", 
 "subcategories", "scheduled_transactions", "transactions".
Caution: Must be careful with use, as to not overload YNAB's servers.
}
\examples{
#token location
library(dplyr)
mytoken <- "1234567890ABCDE"
df_budgets <- getStartingData(i = "budgets", param.token = mytoken)
mybudgetid <- df_budgets[df_budgets$name == "My Budget",c("id")]
#OR
#mybudgetid <- selectBudget(param.token = mytoken)
df_accounts <- getBudgetDetails(i = "accounts", param.token = mytoken, 
param.budgetid = mybudgetid)
}
\keyword{getBudgetDetails}
