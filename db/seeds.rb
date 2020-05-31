# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Skill.destroy_all

skills = [{ icon: 'rails', text: 'Ruby On Rails 6' },
       { icon: 'HTML2', text: 'HTML'},
       { icon: 'CSS2', text: 'CSS'},
       { icon: 'JS2', text: 'Javascript ES6'},
       { icon: 'SQL', text: 'SQL'},
       { icon: 'github', text: 'Github'},
       { icon: 'react', text: 'React'},
       { icon: 'heroku', text: 'Heroku'},
       { icon: 'postgresql', text: 'PostgreSQL'},
       { icon: 'git', text: 'Git'},
       { icon: 'ruby', text: 'Ruby'},
       { icon: 'photoshop', text: 'Photoshop'},
       { icon: 'illustrator', text: 'Illustrator'},
       { icon: 'indesign', text: 'Indesign'},
       { icon: 'figma', text: 'Figma'},
       ]
skills.each do |skill|
  # p "#{skill[:icon]}.svg"
  s = Skill.new(iconName: "#{skill[:icon]}.svg", text: skill[:text])
  p s
  puts  s.save ? "saved #{s.text}" : "couldnt save #{s.text}"
end
