require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @user_name = params[:name]
    "#{@user_name}".reverse
   end 

  get '/square/:number' do 
  @square_number = params[:number].to_i**2
  @square_number.to_s 
end 

get '/say/:number/:phrase' do
    str = ""
    @num = params[:number].to_i
    @phras = params[:phrase]
    @num.times { str += "#{@phras}\n" }
    str
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word_1 = params[:word1]
     @word_2 = params[:word2]
      @word_3 = params[:word3]
       @word_4 = params[:word4]
        @word_5 = params[:word5]
        " #{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end 
  
  get ' /:operation/:number1/:number2' do 
    @oper = params[:operation]
    @num_1 = params[:number1]
    @num_2 = params[:number2]
    
    case @oper
    when "add" 
      (@num_1 + @num_2).to_i
      when "subtract"
       (@num_2 - @num_1).to_i
       when "multiplie"
          (@num_1 * @num_2).to_i
          when "divide"
             (@num_1 / @num_2).to_i
       end     
  end 
end 