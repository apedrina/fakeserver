require 'sinatra'
require 'byebug'

def read_with_rescue(file)
  begin
    File.read(file)
  rescue => e
    puts e
    status 404
  end
end

before do
  content_type 'application/json'
end

def is_status?(id)
  statuses = ['404','422', '500']
  statuses.include?(id)
end

get '/api/brafin-rest/incidente/status' do
  File.read('./files/incidentes_status.json')
end

get  '/search/pangaea/v2/:resource/:id' do
  page = params[:next]
  id = params[:id]
  resource = params[:resource]

  return status id if is_status?(id)

  file = "./files/oms_#{resource}_#{id}"
  file << "_#{page}" if page
  file << ".json"

  read_with_rescue(file)
end

get '/api/brafin-rest/incidente/:id' do
  id = params[:id]

  file = "./files/incidentes_#{id}.json"
  read_with_rescue(file)
end

#http://localhost:4567/api/deliveries/7339577201/refund
post '/api/brafin-rest/incidente' do
  
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"

end
