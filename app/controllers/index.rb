get '/' do
  erb :index
end


post '/rolls' do
  value = params[:value] ? params[:value].to_i : nil
  @roll = value ? Roll.create({ value: value }) : Roll.create

  if request.xhr?
    erb :_roll, layout: false, locals: { roll: @roll }
  else
    erb :index
  end
end
