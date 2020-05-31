# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Skill.destroy_all
Project.destroy_all

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

projects = [{ image: 'miniGuesswhat.jpg',
              title: 'Blind test musical',
              paragraph: "Ce jeu à reconnaissance vocale permet à l'utilisateur d'inviter un autre joueur de se connecter à la partie. Chacun peut jouer depuis son propre smartphone.
    Le MVP a été réalisé lors d'un sprint de 10 jours au Wagon, en équipe de 4. Nous avons utilisé les technologies ActionCable et API Rest.",
              icons: ['rails', 'HTML', 'CSS', 'JS'],
              link: "https://www.guesswhat.live"
            },
            { image: 'miniStaticpages.jpg',
              title: 'Messagerie',
              paragraph: "Création d’une messagerie clone de Twitter d’après le cours de Michael Hart. L’inscription, l'authentification et l’identification des utilisateurs sont réalisés <em>from scratch</em> et reproduisent le comportement de Devise. Chaque utilisateur peut envoyer des microposts avec texte et image, et choisir de suivre d'autres utilisateurs.",
              icons: ['rails', 'HTML', 'CSS'],
              link: "https://staticpages-pg.herokuapp.com/"
            },
            {
              image: 'miniPetme.jpg',
              title: 'Marketplace',
              paragraph: "Ce MVP a été réalisé en un sprint de 5 jours au Wagon en équipe de 4. Clonant Airbnb, il permet à chaque utilisateur de louer un animal domestique, et aussi de mettre le sien en location, avec géolocalisation.",
              icons: ['rails', 'HTML', 'CSS', 'JS'],
              link: "https://pet-me-please.herokuapp.com/"
            },
            {
              image: 'miniAdhesion.jpg',
              title: 'Association culturelle',
              paragraph: "Refonte Front et Back de tout le site internet. Mises à jour régulières en fonction de l'actualité.
      Création d'une interface d'inscription en ligne.",
              icons: ['rails', 'HTML', 'SQL', 'php'],
              link: "https://www.capoeiraviola.com/"
            },
          {
              image: 'miniSiteperso.jpg',
              title: "Portfolio d'artiste",
              paragraph: "J'ai créé ce site il y a 10 ans pour promouvoir mon profil professionnel. J'ai appris HTML, CSS et javascript en autodidacte. Je le mets régulièrement à jour, avec des refontes de l'UI pour suivre l'évolution des codes visuels.",
              icons: ['HTML', 'CSS', 'JS'],
              link: "https://www.pierregarcia.fr/"
            }
          ]
projects.each do |project|
  p = Project.new( image: project[:image],
                    title: project[:title],
                    paragraph: project[:paragraph],
                    icons: project[:icons],
                    link: project[:link]
                  )
  puts p.save ? "success for #{p}" : "failed #{p}"
end
