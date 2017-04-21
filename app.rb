require 'sinatra'
require 'shotgun'


get '/' do
	 'Hello World!'
	 
end


get '/greet' do
	name = params[:name]
	if name!=nil
	 return "Hello #{name}"
	else
	 return "Invalid Parameters"
	end
end

get '/print_params' do
	params.to_s
end

get '/fibo' do
	n = params[:n]
	m = n.to_i
	f = fib(n.to_i)
	return "Fibo = #{f}"
end

def fib(n)
	i=2
	a=0
	b=1
	while i<n
	 c=a+b
	 a=b
	 b=c
	 i=i+1
	end
	return c
end
