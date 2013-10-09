get '/' do
  erb :index
end

get '/login' do 
  erb :login
end

get '/new_account' do
  erb :new_account
end

post '/new_account' do
  @user = User.create(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], password: params[:password])
  erb :user_page
end
