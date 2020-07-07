require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square.to_s}"
  end
  
  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @longstring =""
    @num.times do
     @longstring = @longstring + @phrase
    end
    "#{@longstring}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word = []
    @word << params[:word1] + " "
    @word << params[:word2] + " "
    @word << params[:word3] + " "
    @word << params[:word4] + " "
    @word << params[:word5] + "."
    @longword = ""
    @word.each do |w|
      @longword = @longword + w
    end
    @longword
  end
  
  get '/:operation/:number1/:number2' do 
    @operation
    

end