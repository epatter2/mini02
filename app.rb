require 'sinatra'
require "./leapyear.rb"

get '/leapyear' do
  if params['leapyear'] == "isleapyear"
    return erb :isleapyear
  else
    return erb :notleapyear
  end
end

get '/hello' do
  return "Hello " + params['salutation'] + " " + params['name']
end

get '/great' do
  if params['time'] == "morning"
  return "Good Morning"
  elsif params['time'] == "evening"
  return "Good Evening"
  else
  return "Good Night"
  end
end

get '/' do
  erb :index
end

post '/cal/' do
  month = params[:month]
  year = params[:year]
  return "<pre>" + `cal -h #{month} #{year}` + "</pre>"
end

post '/ly/' do
  year = params[:year]
  flag = LeapYear.new.is_leap_year?(params[:year].to_i)
  if(flag)
    erb :isleapyear
  else
    erb :notleapyear
  end
end

post '/easter/' do
  # TODO: show easter given year
end
