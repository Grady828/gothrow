require "digest"
require "faraday"

class PagesController < ApplicationController
    def home
        @parsed = Courses.new_lookup(12911)
    end  
    
    def index 
        @parsed = Courses.new_lookup(12911)
    end    
end


