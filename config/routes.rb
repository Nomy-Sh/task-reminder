class << self
  def valid_request_exec?
    return true if instance_methods.include?(:request_exec)
    raise "Tried to call request_exec on a class where it is not defined, #{self}"
  end

  %i[get post patch delete put].each do |request_method|
    define_method(:"#{request_method}_ycs") do |path, klass, opts = {}, &block|
      send(request_method, path, opts = {}) {
        request_exec(path, klass, opts, &block) if self.class.valid_request_exec?
      }
    end
  end
end

def request_exec(_path, klass, opts = {})
  additional_opts = yield(request) if block_given?
  service = klass.new(params.merge(opts))
  service.validate
  service.execute_with_rescue
  respond_with_code(service.respond)
end

Rails.application.routes.draw do
  get 'home/calendar'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
  #get '/books' 
  #get_ycs '/users/:status' => 'users#index', foo: 'bar'

end
