require "digest"
require "faraday"

class PagesController < ApplicationController
    def home
    end  
    
    def courses 
        @parsed = Courses.new_lookup(12911)
    end    
end


