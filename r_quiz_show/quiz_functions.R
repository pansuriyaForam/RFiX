ask_question <- function(q, show_choices = TRUE) {
    cat("\nQ:", q$prompt, "\n")
    if (show_choices) {
        for (ch in q$choices) cat(" ", ch, "\n")
    }
    
    ans <- readline(prompt = "Your answer (A/B/C/D or text): ")
    ans_clean <- tolower(trimws(ans))
    if (nchar(ans_clean) == 0) {
        cat("No answer provided. Correct:", toupper(q$answer), "\n")
        cat("Explanation:", q$explanation, "\n")
        return(0)
    }
    
    first_char <- substr(ans_clean, 1, 1)
    if (first_char %in% letters[1:4]) {
        user_letter <- first_char
    } else {
        user_letter <- NA
        for (i in seq_along(q$choices)) {
            choice_text <- tolower(trimws(sub("^.\\.\\s*", "", q$choices[i])))
            if (startsWith(choice_text, ans_clean) || startsWith(ans_clean, choice_text)) {
                user_letter <- letters[i]
                break
            }
        }
        if (is.na(user_letter)) user_letter <- first_char
    }
    
    if (user_letter == q$answer) {
        cat("✅ Correct!\n")
        cat("Tip:", q$explanation, "\n")
        return(1)
    } else {
        cat("❌ Wrong! The correct answer is:", toupper(q$answer), "\n")
        cat("Explanation:", q$explanation, "\n")
        return(0)
    }
}


play_quiz <- function(questions, n_questions = 25) {
    cat("\n🎮 Welcome to THE R QUIZ SHOW! 🎮\n")
    cat("---------------------------------\n")
    cat("You'll get", n_questions, "questions. Let's go!\n")
    
    question_order <- sample(seq_along(questions), n_questions)
    score <- 0
    
    for (i in seq_len(n_questions)) {
        cat("\nQuestion", i, "of", n_questions, ":\n")
        q <- questions[[question_order[i]]]
        score <- score + ask_question(q)
    }
    
    cat("\n---------------------------------\n")
    cat("🏁 QUIZ COMPLETE! 🏁\n")
    cat("You scored", score, "out of", n_questions, "\n")
    
    if (score == n_questions) {
        cat("🎉 Perfect score! You’re basically Hadley Wickham now.\n")
    } else if (score >= n_questions * 0.7) {
        cat("💪 Nice work! You clearly remember your R functions.\n")
    } else if (score >= n_questions * 0.4) {
        cat("🤔 Not bad... but maybe review your R notes tonight.\n")
    } else {
        cat("💀 Oof. Even your data frames are crying. Time to study!\n")
    }
    
    cat("---------------------------------\n")
    cat("Thanks for playing THE R QUIZ SHOW!\n")
}