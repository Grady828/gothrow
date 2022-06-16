require "faraday"
require "digest"

class Courses < ApplicationRecord
    def self.new_lookup(findzip)
        md5 = Digest::MD5.hexdigest("xw8kvywz5n557fmvrz9waydh5s82kg68xw84findzip")
        test = Faraday.get("https://www.dgcoursereview.com/api/?key=xw8kvywz5n557fmvrz9waydh&mode=findzip&zip=#{findzip}&rad=25&sig=#{md5}")
        JSON.parse(test.body)
    end
end

# class Courses < ApplicationRecord
#     def self.new_lookup(findzip)
#         md5 = Digest::MD5.hexdigest("xw8kvywz5n557fmvrz9waydh5s82kg68xw84findzip")
#         test = Faraday.get("https://www.dgcoursereview.com/api_test/?key=xw8kvywz5n557fmvrz9waydh&mode=findzip&zip=#{findzip}&rad=25&sig=#{md5}")
#         JSON.parse(test.body)
#     end
# end
