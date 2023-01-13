# # namespace :import do
# #   desc "Uploads data from xlsx"
# #   task :busroute_data, [:xlsx_path] => :environment do |_t, args|
# #     welcome_controller = WelcomeController.new
# #     welcome_controller.import_data(xlsx_path: args[:xlsx_path])
# #   end

# # end
# require 'roo'
# namespace :import do
#   desc "Import data from spreadsheet" # update this line
#   task busroute_data: :environment do
#     puts 'Importing Data' # add this line
#     data = Roo::Spreadsheet.open('lib/BusRoutes.xlsx') # open spreadsheet
#     headers = data.row(1) # get header row
#     data.each_with_index do |row, idx|
#     next if idx == 0 # skip header
#         # create hash from headers and cells
#       user_data = Hash[[headers, row].transpose]
#       # if User.exists?(route: user_data['route'])
#       #   puts " '#{user_data['route']}' already exists"
#       #   next
#       # end
        
#       welcome = Welcome.new(user_data)
#       puts "Saving User with email #{welcome.routes}"
#       welcome.save!
#     end 
#   end
# end

