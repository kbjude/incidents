module ApplicationHelper
    def sendsms(dest, msg, sender)
        result = send_sms_infobip(dest,msg,sender)
        result
      end
    
      def send_sms_skyline(dest, msg, sender)
        url = 'http://skylinesms.com/api/v2/json/messages'
        response = Faraday.post(url, token: '8b2796930c2f5b1dedde6cc1ab2a4151', to: dest[0], message: msg, from: sender)
        response.body
      end

      def send_sms_tiv(dest, msg, sender)
        url = 'https://commservice-test.innovationvillage.co.ug/api/sms'
        api_key = '9c63b831-c939-41c9-8ad8-10114172e5d3'
        response = Faraday.post(url, {:recipient => dest[0], :message => msg, :sender => sender}.to_json,'Content-Type' => 'application/json')
        response.body
      end
    
      def send_sms_infobip(dest, msg, sender)
        apikey = 'bc87bfa5580043e481wsa2'
        result = 0
        begin
          unless apikey.empty?
            client = Savon.client(wsdl: 'http://galaxy.eygo.biz/apis/smsapi.php?wsdl')
            response = client.call(:sendsms, message: { 'client' => { 'apikey' => apikey, 'recipients' => dest, 'sender' => sender, 'message' => msg } })
            Rails.logger.info response
            if response.success?
              data = response.to_array(:sendsms_response).first
              result = dest.count if data
            end
          end
        rescue Exception => e
          Rails.logger.info e.message
          Rails.logger.info '==================='
        end
        result
      end
end
