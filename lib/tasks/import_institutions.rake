require 'csv'

desc "Import institutions"
task :import_institutions, [:csv_path, :name_csv_path] => :environment do |t, args|
  if args[:csv_path].blank?
    puts "Usage:\n\trake import_institutions[path/to/institutions.csv,path/to/institution-titles.csv]\n" 
    break
  end

  @names = { }
  CSV.foreach(args[:name_csv_path], :headers => true) do |row|
    @names[row['UKPRN']] = row['NAME']
  end  

  CSV.foreach(args[:csv_path], :headers => true) do |row|
    i = Institution.new(
      :id => row['recordId'],
      :ukprn => row['UKPRN'],
      :name => @names[row['UKPRN']]
    )
    if i.save
      puts "Imported #{row['recordId']} -> #{@names[row['UKPRN']]}\n"
    else
      puts "Failed #{row['recordId']} - #{c.errors.map(&:full_messages).join(',')}\n"
    end
  end

end
