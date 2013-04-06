desc "Import lib/data/KISCOURSE.csv into the courses table"
task :import_courses => :environment do

  puts "Importing courses..."
  CSV.foreach(Rails.root.join("lib","data","KISCOURSE.csv"), :headers => true) do |row|
    c = Course.new(
      :id => row['recordId'],
      :parent_id => row['parentId'],
      :course_id => row['KISCOURSEID'],
      :kistype => row['KISTYPE'],
      :title => row['TITLE'],
      :course_url => row['CRSEURL'],
      :ucas_code => row['UCASCOURSEID'],
      :fee_variation => row['VARFEE'],
      :fees_confirmed => row['FEETBC'],
      :fee_england => row['ENGFEE'],
      :fee_scotland => row['NIFEE'],
      :fee_ni => row['SCOTFEE'],
      :fee_wales => row['WAFEE']
      )
    if c.save
      puts "Imported #{row['recordId']}\n"
    else
      puts "Failed #{row['recordId']} - #{c.errors.map(&:full_messages).join(',')}\n"
    end
  end

end
