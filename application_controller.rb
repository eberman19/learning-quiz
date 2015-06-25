require 'bundler'
Bundler.require
require_relative "models/question.rb"
class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/scenario' do
    @topic1 = Question.new("You're in line at the supermarket and it is LONG. What do you do?", "Start a convo with all your fellow line-mates.", "Fidget and move back and forth.", "Rock out to your tunes in your headphones and think of what you need to do.") 
    @topic2 = Question.new("You are at a super fun party. The next day you only remember…", "The food.","The people's names", "Your awesome dance moves.")
    @topic3 = Question.new("You have a big final the next day and you are trying to study. You get most distracted by...", "People talking loudly.", "People constantly entering the room to get something.", "Your uncomfortable chair and slow computer.")
    @topic4 = Question.new("When you are really stressed, which are you most likely to do?", "Yell at everyone and cry.", "Slam doors.", "Pout for the rest of the day.")
    @topic5 = Question.new("A group project has been assigned to you. What type of participant are you?", "Designer, you make the final product look pretty.", "The scribe/ note-taker.", "Presenter, you present the project to the rest of the class.")
    @topics = [@topic1, @topic2, @topic3, @topic4, @topic5]
    erb :scenario
  end
  get '/picture' do
    erb :picture
  end

  post '/work' do
    @topic1 = Question.new("If you need to memorize lines for theater class, how would you do it?", "Read and re-read it over.", "Practice them aloud in the mirror.", "Record yourself saying your lines and play it over and over.") 
    @topic2 = Question.new("Your final is tomorrow, and you haven’t started studying! How will you pass?", "PANIC! Read all the notes you’ve ever taken.","Go to youtube and watch all related videos to your topic.", "Ask your friends to teach you everything.")
    @topic3 = Question.new("How do you prefer to study?", "In a library.", "Outside.", "Anywhere with headphones in.")
    @topic4 = Question.new("Ideal Dream Job", "Artist.", "Producer.", "Professional Athlete.")
    @topic5 = Question.new("When you give someone directions to your house, what are you most likely to tell them?", "Tell them the cross signs.", "Bring them there yourself.", "Give them descriptions of surrounding landmarks and buildings.")
    @topics2 = [@topic1, @topic2, @topic3, @topic4, @topic5]
    erb :work
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
    erb :results
  end
end
