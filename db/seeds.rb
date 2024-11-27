# Suppression des anciens enregistrements (pour éviter les doublons)
Restaurant.destroy_all

# Création de 5 nouveaux restaurants
restaurants = [
  { name: "Le Petit Gourmet", address: "12 Avenue Montaigne, 75008 Paris", phone_number: "01 45 62 78 90", category: "french" },
  { name: "Tokyo Sushi", address: "30 Rue de Tokyo, 75016 Paris", phone_number: "01 47 56 67 78", category: "japanese" },
  { name: "Mamma Mia", address: "7 Boulevard Haussmann, 75009 Paris", phone_number: "01 48 53 76 84", category: "italian" },
  { name: "La Pagode Dorée", address: "18 Rue Lafayette, 75010 Paris", phone_number: "01 53 21 34 56", category: "chinese" },
  { name: "Bruxelles Délices", address: "25 Place de la Bastille, 75011 Paris", phone_number: "01 52 33 44 55", category: "belgian" }
]

restaurants.each do |restaurant|
  Restaurant.create(restaurant)
end

puts "5 restaurants ont été créés avec succès !"

