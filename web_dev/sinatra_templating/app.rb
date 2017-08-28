# require gems
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/breakdown' do
  @SF = db.execute("SELECT * FROM students WHERE campus='SF'")
  @SD = db.execute("SELECT * FROM students WHERE campus='SD'")
  @NYC = db.execute("SELECT * FROM students WHERE campus='NYC'")
  @SEA = db.execute("SELECT * FROM students WHERE campus='SEA'")
  @CHI = db.execute("SELECT * FROM students WHERE campus='CHI'")
  erb :student_breakdown
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources