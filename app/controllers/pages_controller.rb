require "digest"
require "faraday"

class PagesController < ApplicationController
    def home
        @parsed = Dgcr.new_lookup(12828)
    end    
end


