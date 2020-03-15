require 'json'
require 'airtable'
require 'active_support/all'

@client = Airtable::Client.new(ENV["AIRTABLE_API_KEY"])
@table = @client.table("appNCO9QEMVKRmd6d", "Restaurace")
@records = @table.records()

File.open("_data/restaurace.json", "w") do |f|
    data = @records.map { |record| record.attributes }
    f.write(data.to_json)
end
