require 'net/ftp'

task :import_vehicle_data => :environment do
  # Stop task if variables are not set
  unless ENV['FTP_USERNAME'] && ENV['FTP_PASSWORD']
    raise "ENV['FTP_USERNAME'] and ENV['FTP_PASSWORD'] are not set"
  end

  # Opens an FTP connection,
  # Saves the latest csv file,
  # Passes the file to Vehicle.import
  Dir.chdir("tmp") do
    Net::FTP.open("files.ftphosting.com") do |ftp|
      ftp.passive = true # Heroku requires this
      ftp.login(ENV['FTP_USERNAME'], ENV['FTP_PASSWORD'])
      ftp.get(ftp.nlst.first)
      file = File.open(ftp.nlst.first)
      Vehicle.import(file)
    end
  end
end
