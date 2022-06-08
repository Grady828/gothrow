require "digest"
require "faraday"

class PagesController < ApplicationController
    def home
        md5 = Digest::MD5.hexdigest('xw8kvywz5n557fmvrz9waydh5s82kg68xw84crseinfo')
        Rails.logger.info md5
        test = Faraday.get("https://www.dgcoursereview.com/api_test/?key=xw8kvywz5n557fmvrz9waydh&mode=crseinfo&id=6402&sig=#{md5}")
        @test = test.body
    end
end
