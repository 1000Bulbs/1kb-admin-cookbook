require 'rest-client'

def github_user_keys(user_name)
  url = "https://github.com/#{user_name}.keys"
  [].tap do |keys|
    RestClient.get(url).split("\n").each do |key|
      keys << key
    end
  end
end