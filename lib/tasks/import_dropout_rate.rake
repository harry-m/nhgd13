require 'csv'

desc "Import dropout rate data"
task :import_dropout_rate, [:csv_path] => :environment do |t, args|
  if args[:csv_path].blank?
    puts "Usage:\n\trake import_dropout_rate[path/to/dropout-rates.csv]\n" 
    break
  end

  CSV.foreach(args[:csv_path]) do |row|
    institution = Institution.where(:name => row[0]).first

    if institution
      institution.dropout_rate = row[1]
      if institution.save
        puts "Updated #{institution.name} with dropout rate -> #{row[1]}\n"
      else
        puts "Failed to update #{institution.name} - #{institution.errors.map(&:full_messages).join(', ')}\n"
      end
    else
      puts "Could not find any institution with name #{row[0]}"
    end
  end

end
