Beer or Horse?
a quiz game where you guess whether the name presented is a beer or a horse.
If you get one question wrong, the game ends.

User Story:
    - user signs up name & email (no password),
    - user logs in
    - user starts quiz
    - correct answers are logged and user moves on to next question. x second timer per question.
    - incorrect answer ends the game - score is logged on leaderboard, user has option to play again.

Stretch goals:
    - action cable - show current users playing and their submitted scores
    - beer and horse button / data
    - bring up facts about the pub or horse.
    - select x from y options to make the game more difficult
    - add music/sfx
    - faker to add a false option

Models:
￼
	- User has many Questions through Quiz, A Question has many Users through Quiz (join table - Quiz)
	- A Beer has many Questions
	- A Horse has many Questions


Logic thoughts
    - how to avoid the same names appearing when you restart
    - score++ after each correct answer
    - randomise questions so correct answer changes.
    - Stop users from cheating - 10 second timer?

Logic Story
    - user sign up/sign in (no password)
    - home page shows each User questions.count (number of questions attempted), Quiz.all.score sort by descending (leaderboard)
    - start game.
    - New Question is generated.
        - 10 second timer begins
    - Question fetches (for MVP) 1 name from either beers or horses. (later we could add multiple selections)
    - Question checks if name also exists in the data store not used.
    - Question listens for user click on beer/horse buttons.
        - if timer runs out, quiz ends.
    - If user selection matches category of name, Quiz.score++, generate new question.
    - If user selection does not match category of name, new Quiz option appears on screen.
    - Final score should post quiz to db.
    - re-render homepage, fetch-get all quiz scores.
