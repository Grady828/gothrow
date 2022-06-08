class Dgcr < ApplicationRecord
    def self.new_lookup(crseinfo_id)
        md5 = Digest::MD5.hexdigest("xw8kvywz5n557fmvrz9waydh5s82kg68xw84crseinfo")
        test = Faraday.get("https://www.dgcoursereview.com/api_test/?key=xw8kvywz5n557fmvrz9waydh&mode=crseinfo&id=#{crseinfo_id}&sig=#{md5}")
        @test = test.body
    end
    #     client = IEX::Api::Client.new(
    #         publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
    #         secret_token: Rails.application.credentials.iex_client[:secret_access_key],
    #         endpoint: 'https://sandbox.iexapis.com/v1')
    #     begin
    #         new(ticker: ticker_symbol, name: client.company(ticker_symbol).company_name, last_price: client.price(ticker_symbol))  
    #     rescue => exception
    #      return nil
    #     end          
    # end
end