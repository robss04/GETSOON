namespace :profilr do
  desc "TODO"
  task retreive_subscribers_list: :environment do
    Gibbon::Export.api_key = ENV['MAILCHIMP_API_KEY']
    gb = Gibbon::API.new
    gb.lists.members({:id => ENV['MAILCHIMP_LIST_ID']})["data"].each do |k,v|
      puts k["email"]
    end
  end
end

