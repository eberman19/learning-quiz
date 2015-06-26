require 'bundler'
Bundler.require
require_relative "models/question.rb"
require_relative "models/count.rb"
class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/scenario' do
    @topic1 = Question.new("You're in a LONG line at the supermarket. What do you do?", "Start a convo with all your fellow line-mates.", "Fidget and move back and forth.", "Rock out to your tunes in your headphones and think of what you need to do.") 
    @topic2 = Question.new("You are at a super fun party. The next day you only remember…", "The food.","The people's names.", "Your awesome dance moves.")
    @topic3 = Question.new("You have a big final tomorrow, and you are trying to study. You'd get most distracted by...", "People talking loudly.", "People constantly entering the room to get something.", "Your uncomfortable chair and slow computer.")
    @topic4 = Question.new("When you are really stressed, which are you most likely to do?", "Yell at everyone and cry.", "Slam doors.", "Pout for the rest of the day.")
    @topic5 = Question.new("A group project has been assigned. What type of participant are you?", "Designer, you make the final product look pretty.", "The scribe/ note-taker.", "Presenter, you present the project to the rest of the class.")
    @topics = [@topic1, @topic2, @topic3, @topic4, @topic5]
    @topic6 = Question.new("When you need to memorize new vocab words, how do you do it?", "Read and re-read it over.", "Say them aloud.", "Record yourself saying the words and play it over and over.") 
    @topic7 = Question.new("Your final is tomorrow, and you haven’t started studying! How will you pass?", "PANIC! Read all the notes you’ve ever taken.","Go to youtube and watch all related videos on your topic.", "Ask your friends to teach you everything.")
    @topic8 = Question.new("How do you prefer to study?", "In a library.", "Outside.", "Anywhere with headphones in.")
    @topic9 = Question.new("What's your ideal dream job?", "An Artist.", "A Producer.", "A Professional Athlete.")
    @topic10 = Question.new("How are you most likely to give someone directions to your house?", "Tell the cross signs.", "Bring them there yourself.", "Give them descriptions of surrounding landmarks and buildings.")
    @topics2 = [@topic6, @topic7, @topic8, @topic9, @topic10]
    
    @topic11 = Question.new("What is your spirit animal?", " ", " ", " ") 
    @topic12 = Question.new("Which best describes your life?", " "," ", " ")
    @topic13 = Question.new("Which color is your favorite of these?", " ", " ", " ")
    @topic14 = Question.new("Pick your favorite game.", " ", " ", " ")
    @topic15 = Question.new("If you were in a time machine, where would you go?", " ", " ", " ")
    @topics3 = [@topic11, @topic12, @topic13, @topic14, @topic15]
    
     @topic16 = Question.new("Which of these would you rather go to with your friends?", "A movie marathon at home.", "A concert where your favorite artist is performing and you know all the lyrics to every song.", "The gym and burn calories!") 
    @topic17 = Question.new("Your favorite artist just released a new album! How do you get your hands on it?", "Run to the nearest Target and purchase 5 copies.","Go to  the iTunes Store and download it immediately.", "Wait for people to upload it to youtube the next day.")
    @topic18 = Question.new("What’s your idea of a perfect date?", "Dinner and a movie.", "Go to a concert together.", "Laser tag and Pizza.")
    @topic19 = Question.new("You’re out and you see the guy your friend has a crush on with another girl! You…", "snap stalker-like pics of him to send to her.", "Listen in on their conversations.", "Confront him confidently.")
    @topics4 = [@topic16, @topic17, @topic18, @topic19]
    
    @topic20 = Question.new("You like your bedroom to always be…","Neat and organized. You clean it every day.", "Messy. You never clean up your room unless someone makes you.", "The space where you do EVERYTHING! You do your homework and studying there; you eat in there; you watch tv in there! ")
    @topic21 = Question.new(" It’s move-in day your freshman year in college! How do you make it more home-like?","Posters. Everywhere.", "Create a “chill” corner. Not for working, strictly relaxing.", "Decorate it exactly like your room is at home.")
    @topic22 = Question.new("On a casual day where you’re not going anywhere special, you usually tend to throw on…","A cool graphic tee and patterned sneakers.", "A pair of plain shorts, a sweater, and a basic white shirt.", "Jeans, a plain top, sneakers, and a small a bag full of things you might need like sunglasses, hand lotion, and a water bottle if you get really thirsty. ")
    @topics5 = [@topic20, @topic21, @topic22]
    erb :scenario
  end
  
 
  post '/results' do
    @answer = params[:q1]
    @answer2 = params[:q2]
    @answer3 = params[:q3]
    @answer4 = params[:q4]
    @answer5 = params[:q5]
    @answer6 = params[:q6]
    @answer7 = params[:q7]
    @answer8 = params[:q8]
    @answer9 = params[:q9]
    @answer10 = params[:q10]
    @answer11 = params[:q11]
    @answer12 = params[:q12]
    @answer13 = params[:q13]
    @answer14 = params[:q14]
    @answer15 = params[:q15]
    @answer16 = params[:q16]
    @answer17 = params[:q17]
    @answer18 = params[:q18]
    @answer19 = params[:q19]
    @answer20 = params[:q20]
    @answer21 = params[:q21]
    @answer22 = params[:q22]
    @answer23 = params[:q23]
    counter1 = Counter.new(params)
    counter1.a
    counter1.v
    counter1.t
    @learntype = counter1.count
    if @learntype == "v"
      @learntype = "visual"
    elsif @learntype == "a"
      @learntype = "auditory"
    elsif @learntype == "t"
      @learntype = "tactile"
    end
    erb :results
  end
end
