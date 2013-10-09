get '/' do
  erb :index
end

get '/login' do 
  erb :login
end

get '/new_account' do
  erb :new_account
end

get '/secret_recipe' do
  erb :secret_recipe
  # || erb :index
end

post '/secret_recipe' do
  erb :secret_recipe
end

post '/login' do
  @user = User.find_by_email(params[:existing_email])
  if @user != nil
    passed = User.authenticate(params[:existing_email], params[:existing_password])
    if passed
       return erb :secret_recipe
    else
      erb :index
    end
  else
    erb :index
  end
end

post '/new_account' do
  @user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
  erb :index
end
