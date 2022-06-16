require "faraday"
require "digest"


class Course < ApplicationRecord
    def self.new_lookup(crseinfo)
        md5 = Digest::MD5.hexdigest("xw8kvywz5n557fmvrz9waydh5s82kg68xw84crseinfo")
        test = Faraday.get("https://www.dgcoursereview.com/api/?key=xw8kvywz5n557fmvrz9waydh&mode=crseinfo&id=#{crseinfo}&sig=#{md5}")
        JSON.parse(test.body)
    end
end

# class Course < ApplicationRecord
#     def self.new_lookup(crseinfo)
#         md5 = Digest::MD5.hexdigest("xw8kvywz5n557fmvrz9waydh5s82kg68xw84crseinfo")
#         test = Faraday.get("https://www.dgcoursereview.com/api_test/?key=xw8kvywz5n557fmvrz9waydh&mode=crseinfo&id=#{crseinfo}&sig=#{md5}")
#         JSON.parse(test.body)
#     end
# end
