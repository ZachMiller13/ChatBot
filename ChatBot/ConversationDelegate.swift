struct ConversationDelegate {
    /// Creates a String in response to another String.
    func responseTo(question: String) -> String {
        let lowerQuestion = question.lowercased()
        
        if lowerQuestion.hasPrefix("hello") {
            return "Why, hello there!"
        } else if lowerQuestion == "where are the cookies?" {
            return "In the cookie jar!"
        } else if lowerQuestion.hasPrefix("where") {
            return "To the North!"
        } else if lowerQuestion.contains("old are you") {
            return "How rude of you to ask my age!"
        } else if lowerQuestion.contains("your name") {
            return "My name is Chatty Kathy."
        } else {
            let defaultNumber = question.count % 3
            
            if defaultNumber == 0 {
                return "That really depends"
            } else if defaultNumber == 1 {
                return "I think so, yes"
            } else {
                return "Ask me again tomorrow"
            }
        }
    }
}
