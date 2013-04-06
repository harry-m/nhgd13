require 'csv'

desc "Import salary data"
task :import_salaries, [:csv_file] => :environment do |task, args|
  if args.empty?
    puts "Usage:\n\trake import_salaries[path/to/salaries.csv]\n" 
    break
  end

  data = CSV.read(args[:csv_file])

  data.each do |record|
    next if record[0] == 'recordId'

    Salary.create(
      :id => record[0],
      :course_id => record[1],
      :pop => record[2],
      :agg => record[3],
      :sbj => record[4],
      :ldlq => record[5],
      :ldmed => record[6],
      :lduq => record[7],
      :lq => record[8],
      :med => record[9],
      :uq => record[10],
      :instlq => record[11],
      :instmed => record[12],
      :instuq => record[13]
    )
  end
end
