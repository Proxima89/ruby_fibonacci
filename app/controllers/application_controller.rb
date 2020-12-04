class ApplicationController < Sinatra::Base

    configure do
        set :public_folder, 'public'
        set :views, 'app/views'
    end
    
    get '/' do
        @time_of_day = Time.now
        erb :index
    end
    
end
