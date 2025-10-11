# ==========================
# questions.R — R Quiz Show
# ==========================

questions <- list(
    
    list(
        id = 1,
        prompt = "What does mean(x) compute?",
        choices = c("A. Sum of x",
                    "B. Median of x",
                    "C. Average (arithmetic mean) of x",
                    "D. Standard deviation of x"),
        answer = "c",
        explanation = "mean() returns the arithmetic mean of numeric values."
    ),
    
    list(
        id = 2,
        prompt = "Which function shows the internal structure of an R object?",
        choices = c("A. summary()", "B. str()", "C. head()", "D. print()"),
        answer = "b",
        explanation = "str() displays the structure and types of elements."
    ),
    
    list(
        id = 3,
        prompt = "What does apply(X, 1, FUN) do?",
        choices = c("A. Applies FUN over columns",
                    "B. Applies FUN over rows",
                    "C. Applies FUN to entire matrix",
                    "D. Throws an error"),
        answer = "b",
        explanation = "MARGIN = 1 applies a function over rows; MARGIN = 2 over columns."
    ),
    
    list(
        id = 4,
        prompt = "What does length(x) return?",
        choices = c("A. The sum of elements",
                    "B. The number of elements",
                    "C. The type of elements",
                    "D. The maximum element"),
        answer = "b",
        explanation = "length(x) gives the number of elements in x."
    ),
    
    list(
        id = 5,
        prompt = "Which function combines vectors into a data frame?",
        choices = c("A. list()", "B. matrix()", "C. data.frame()", "D. combine()"),
        answer = "c",
        explanation = "data.frame() binds named vectors into a tabular structure."
    ),
    
    list(
        id = 6,
        prompt = "What does seq(1, 5, by = 2) return?",
        choices = c("A. 1 2 3 4 5",
                    "B. 1 3 5",
                    "C. 1 5 2",
                    "D. 1 2 4 5"),
        answer = "b",
        explanation = "seq(1, 5, by = 2) creates a sequence: 1, 3, 5."
    ),
    
    list(
        id = 7,
        prompt = "Which function merges two data frames by a common column?",
        choices = c("A. join()", "B. merge()", "C. bind()", "D. cbind()"),
        answer = "b",
        explanation = "merge() joins two data frames by shared columns or row names."
    ),
    
    list(
        id = 8,
        prompt = "What does head(df, 3) show?",
        choices = c("A. The first 3 rows of df",
                    "B. The last 3 rows of df",
                    "C. The first 3 columns",
                    "D. Random 3 rows"),
        answer = "a",
        explanation = "head(df, n) returns the first n rows."
    ),
    
    list(
        id = 9,
        prompt = "Which function converts a character to numeric?",
        choices = c("A. as.char()", "B. convert()", "C. as.numeric()", "D. cast()"),
        answer = "c",
        explanation = "as.numeric() coerces characters to numeric if possible."
    ),
    
    list(
        id = 10,
        prompt = "What does paste('R', 'rocks', sep = '-') return?",
        choices = c("A. R rocks", "B. R, rocks", "C. R-rocks", "D. 'R'-'rocks'"),
        answer = "c",
        explanation = "paste() combines text with a separator, here producing 'R-rocks'."
    ),
    
    list(
        id = 11,
        prompt = "Which function returns TRUE if any element is TRUE?",
        choices = c("A. all()", "B. any()", "C. sum()", "D. exists()"),
        answer = "b",
        explanation = "any() checks if at least one logical value is TRUE."
    ),
    
    list(
        id = 12,
        prompt = "Which operator is used for element-wise logical AND?",
        choices = c("A. &&", "B. ||", "C. &", "D. and()"),
        answer = "c",
        explanation = "& is element-wise AND; && compares only the first elements."
    ),
    
    list(
        id = 13,
        prompt = "What does na.omit(x) do?",
        choices = c("A. Replaces NAs with zeros",
                    "B. Removes rows containing NA values",
                    "C. Converts NAs to characters",
                    "D. Counts missing values"),
        answer = "b",
        explanation = "na.omit() removes observations with missing values."
    ),
    
    list(
        id = 14,
        prompt = "What is the output of sum(c(TRUE, FALSE, TRUE))?",
        choices = c("A. 3", "B. 2", "C. 1", "D. 0"),
        answer = "b",
        explanation = "TRUE is treated as 1, FALSE as 0, so sum = 2."
    ),
    
    list(
        id = 15,
        prompt = "Which function gives summary statistics for a numeric vector?",
        choices = c("A. summary()", "B. str()", "C. describe()", "D. report()"),
        answer = "a",
        explanation = "summary() provides min, median, mean, and quantiles."
    ),
    
    list(
        id = 16,
        prompt = "In dplyr, which function is used to select specific columns from a data frame?",
        choices = c("A. filter()", "B. select()", "C. arrange()", "D. mutate()"),
        answer = "b",
        explanation = "select() chooses columns; filter() chooses rows."
    ),
    
    list(
        id = 17,
        prompt = "What does summarise(mean_price = mean(price)) do in dplyr?",
        choices = c("A. Adds a column for mean_price", 
                    "B. Returns a new data frame with one row containing the mean price",
                    "C. Prints all price values", 
                    "D. Groups data by price"),
        answer = "b",
        explanation = "summarise() reduces multiple rows to summary values, like the mean."
    ),
    
    list(
        id = 18,
        prompt = "What is the function to combine two datasets vertically in R (like stacking rows)?",
        choices = c("A. rbind()", "B. cbind()", "C. merge()", "D. join()"),
        answer = "a",
        explanation = "rbind() binds rows (same columns); cbind() binds columns."
    ),
    
    list(
        id = 19,
        prompt = "What does cor(x, y) compute?",
        choices = c("A. Covariance between x and y",
                    "B. Correlation between x and y",
                    "C. Regression coefficient",
                    "D. Mean difference"),
        answer = "b",
        explanation = "cor() returns Pearson correlation by default (linear relationship strength)."
    ),
    
    list(
        id = 20,
        prompt = "In finance, what does diff(log(prices)) estimate?",
        choices = c("A. Logarithmic returns",
                    "B. Percentage change",
                    "C. Simple returns",
                    "D. Cumulative returns"),
        answer = "a",
        explanation = "diff(log(prices)) approximates continuous log returns — widely used in quant finance."
    ),
    
    list(
        id = 21,
        prompt = "What is the output of sd(x) in R?",
        choices = c("A. Sum of data",
                    "B. Standard deviation",
                    "C. Standard error",
                    "D. Mean value"),
        answer = "b",
        explanation = "sd() returns the standard deviation — a measure of volatility in finance."
    ),
    
    list(
        id = 22,
        prompt = "Which ggplot2 function adds a line connecting data points?",
        choices = c("A. geom_point()", "B. geom_bar()", "C. geom_line()", "D. geom_smooth()"),
        answer = "c",
        explanation = "geom_line() draws a line plot — perfect for visualizing time series like stock prices."
    ),
    
    list(
        id = 23,
        prompt = "In time series analysis, what does 'lag()' do?",
        choices = c("A. Shifts values backward or forward in time",
                    "B. Removes missing data",
                    "C. Aggregates by month",
                    "D. Normalizes the series"),
        answer = "a",
        explanation = "lag() creates lagged versions of data for modeling autocorrelation or returns."
    ),
    
    list(
        id = 24,
        prompt = "Which function fits a simple linear regression model in R?",
        choices = c("A. glm()", "B. lm()", "C. predict()", "D. fit()"),
        answer = "b",
        explanation = "lm() fits linear models, e.g., lm(price ~ volume, data = stocks)."
    ),
    
    list(
        id = 25,
        prompt = "After fitting a model with lm(), which function predicts new values?",
        choices = c("A. summary()", "B. predict()", "C. coef()", "D. resid()"),
        answer = "b",
        explanation = "predict(model, newdata) gives predicted outcomes based on the fitted model."
    )
)
