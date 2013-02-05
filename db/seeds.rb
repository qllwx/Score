#encoding:utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

  subjects=Subject.create([
		{:name=>"语文",:grade=>"七=100,八=100,九=150"},
		{:name=>"数学",:grade=>"七=100,八=100,九=150"},
		{:name=>'英语',:grade=>"七=100,八=100,九=150"},
		{:name=>'物理',:grade=>"八=100,九=100"},
		{:name=>'化学',:grade=>"九=100"},
		{:name=>'生物',:grade=>"七=100,八=100"},
		{:name=>'政治',:grade=>"七=100,八=100,九=100"},
		{:name=>'历史',:grade=>"七=100,八=100,九=100"},
		{:name=>'地理',:grade=>"七=100,八=100"}])
  Grade.create([{:no=>7,:name=>"七"},{ :no=>8,:name=>'八'},{:no=>9,:name=>"九"}])

	


   
