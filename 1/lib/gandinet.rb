require 'uri'
require 'net/http'

module Gandi

  class Domains
    def self.list(api_key)
      url = URI("https://api.gandi.net/v5/domain/domains")

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true

      request = Net::HTTP::Get.new(url)
      request["authorization"] = 'Apikey ' + api_key

      response = http.request(request)
      puts response.read_body
    end

    def self.check(api_key, domain_name, duration, city, given, family, zip, country, streetaddr, phone, state, type, email)
      url = URI("https://api.gandi.net/v5/domain/domains")

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true

      request = Net::HTTP::Post.new(url)
      request["authorization"] = 'Apikey ' + api_key
      request["content-type"] = 'application/json'
      request["dry-run"] = '1'
      request.body = "{\"fqdn\":\"" + domain_name + "\",\"duration\":" + duration.inspect + ",\"owner\":{\"city\":\""+ city +"\",\"given\":\""+ given +"\",\"family\":\""+ family +"\",\"zip\":\"" + zip.inspect + "\",\"country\":\""+ country +"\",\"streetaddr\":\""+ streetaddr +"\",\"phone\":\""+ phone +"\",\"state\":\""+ state +"\",\"type\":" + type.inspect + ",\"email\":\""+ email +"\"}}"

      puts  request.body
      response = http.request(request)
      puts response.read_body
    end

    def self.new(api_key, domain_name, duration, city, given, family, zip, country, streetaddr, phone, state, type, email)
      url = URI("https://api.gandi.net/v5/domain/domains")

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true

      request = Net::HTTP::Post.new(url)
      request["authorization"] = 'Apikey ' + api_key
      request["content-type"] = 'application/json'
      request.body = "{\"fqdn\":\"" + domain_name + "\",\"duration\":" + duration.inspect + ",\"owner\":{\"city\":\""+ city +"\",\"given\":\""+ given +"\",\"family\":\""+ family +"\",\"zip\":\"" + zip.inspect + "\",\"country\":\""+ country +"\",\"streetaddr\":\""+ streetaddr +"\",\"phone\":\""+ phone +"\",\"state\":\""+ state +"\",\"type\":" + type.inspect + ",\"email\":\""+ email +"\"}}"

      response = http.request(request)
      puts response.read_body
    end

    def self.info(api_key, domain)
      url = URI("https://api.gandi.net/v5/domain/domains/" + domain)

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true

      request = Net::HTTP::Get.new(url)
      request["authorization"] = 'Apikey ' + api_key

      response = http.request(request)
      puts response.read_body

    end

    def self.renew(api_key, domain, durat, enabl)
      url = URI("https://api.gandi.net/v5/domain/domains/" + domain + "/autorenew")

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true

      request = Net::HTTP::Patch.new(url)
      request["authorization"] = 'Apikey ' + api_key
      request["content-type"] = 'application/json'
      request.body = "{\"duration\":" + durat.inspect + ",\"enabled\":" + enabl + "}"

      response = http.request(request)
      puts response.read_body
    end
    class Contacts
      def self.get(api_key, domain)
        url = URI("https://api.gandi.net/v5/domain/domains/" + domain + "/contacts")


        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true

        request = Net::HTTP::Patch.new(url)
        request["authorization"] = 'Apikey ' + api_key

        response = http.request(request)
        puts response.read_body
      end

      def self.update(api_key, domain, lang, city, given, family, zip, extra_parameters, country, streetaddr, data_obfuscated, mail_obfuscated, phone, state, type, email)
        url = URI("https://api.gandi.net/v5/domain/domains/" + domain + "/contacts")


        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true

        request = Net::HTTP::Patch.new(url)
        request["authorization"] = 'Apikey ' + api_key
        request["content-type"] = 'application/json'
        request.body = "{\"admin\":{\"lang\":\"" + lang + "\",\"city\":\"" + city + "\",\"given\":\"" + given + "\",\"family\":\"" + family + "\",\"zip\":\"" + zip.inspect + "\",\"extra_parameters\":{" + extra_parameters + "},\"country\":\"" + country + "\",\"streetaddr\":\"" + streetaddr + "\",\"data_obfuscated\":" + data_obfuscated + ",\"mail_obfuscated\":" + mail_obfuscated + ",\"phone\":\"" + phone + "\",\"state\":\"" + state + "\",\"type\":" + type.inspect + ",\"email\":\"" + email + "\"}}"


        response = http.request(request)
        puts response.read_body
      end
    end
    class Glue
      def self.list(api_key, domain)
        url = URI("https://api.gandi.net/v5/domain/domains/" + domain + "/hosts")

        http = Net::HTTP.new(url.host, url.port)
        http.use_ssl = true

        request = Net::HTTP::Patch.new(url)
        request["authorization"] = 'Apikey ' + api_key

        response = http.request(request)
        puts response.read_body
      end
    end
  end

end