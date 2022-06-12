require "digest"
require "faraday"

class PagesController < ApplicationController
    def home
    end  
    
    def courses 
        @parsed = Courses.new_lookup(params[:findzip])
    end 
      
end


