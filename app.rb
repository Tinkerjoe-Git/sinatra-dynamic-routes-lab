require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/reversename/:name' do
    @user_name = params[:name]
    reverse=@user_name.reverse
    "#{reverse}"
  end

  get "/say/:number/:phrase" do
    @st=""
    params[:number].to_i.times do
      @st+="#{params[:phrase]}\n"
    end
    "#{@st}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation]=='add'
      "#{params[:number1].to_i+params[:number2].to_i}"
    elsif params[:operation]=='subtract'
      "#{params[:number1].to_i-params[:number2].to_i}"
    elsif params[:operation]=='multiply'
      "#{params[:number1].to_i*params[:number2].to_i}"
    elsif params[:operation]=='divide'
      "#{params[:number1].to_i/params[:number2].to_i}"
    end
  end




  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye' do
    "Goodbye"
  end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/square/:number' do
    "#{params[:number].to_i*params[:number].to_i}"
  end

  
  

end