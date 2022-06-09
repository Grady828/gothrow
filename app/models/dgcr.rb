require "faraday"
require "digest"

class Dgcr < ApplicationRecord
            def self.new_lookup(crseinfo_id)
                md5 = Digest::MD5.hexdigest("xw8kvywz5n557fmvrz9waydh5s82kg68xw84crseinfo")
                test = Faraday.get("https://www.dgcoursereview.com/api_test/?key=xw8kvywz5n557fmvrz9waydh&mode=crseinfo&id=4669&sig=#{md5}")
                JSON.parse(test.body).with_indifferent_access
            end
end
