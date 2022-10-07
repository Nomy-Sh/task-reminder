require 'firebase'
require 'pry'

# Using Firebase Admin SDK private key
firebase_url    = 'https://task-reminder-nomy-default-rtdb.firebaseio.com/'
private_key_json_string = File.open('sdk.json').read

firebase = Firebase::Client.new(firebase_url, private_key_json_string)

response = firebase.set("todos", { :name => 'Pick the milk', :priority => 1 })
puts response
binding.pry

=begin
set(path, data, query_options)
get(path, query_options)
push(path, data, query_options)
delete(path, query_options)
update(path, data, query_options)
=end

