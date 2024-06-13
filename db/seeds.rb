puts 'deleting recipes, categories, ingredients, users...'
Recipe.destroy_all
Category.destroy_all
Ingredient.destroy_all
User.destroy_all

user1 = User.create!(email: 'julia@gmail.com', password: '123456', first_name: 'Julia', last_name: 'Moreau')
user2 = User.create!(email: 'isaiah@gmail.com', password: '123456', first_name: 'Isaiah', last_name: 'Zalc')
user3 = User.create!(email: 'zena@gmail.com', password: '123456', first_name: 'Zena', last_name: 'El Kurdi')
user4 = User.create!(email: 'pierre@gmail.com', password: '123456', first_name: 'Pierre', last_name: 'Urban')
user5 = User.create!(email: 'clothilde@gmail.com', password: '123456', first_name: 'Clothilde', last_name: 'Scache')
default_user = User.create!(email: 'defaultuser@gmail.com', password: '123456', first_name: 'Default', last_name: 'User')

user1.photo.attach(
  io: File.open("public/images/julia.png"),
  filename: "julia.png", # use the extension of the attached file here
  content_type: 'image/jpg' # use the mime type of the attached file here
)

user2.photo.attach(
  io: File.open("public/images/isaiah.png"),
  filename: "isaiah.png", # use the extension of the attached file here
  content_type: 'image/jpg' # use the mime type of the attached file here
)

user3.photo.attach(
  io: File.open("public/images/zena.png"),
  filename: "zena.png", # use the extension of the attached file here
  content_type: 'image/jpg' # use the mime type of the attached file here
)

user4.photo.attach(
  io: File.open("public/images/pierre.png"),
  filename: "pierre.png", # use the extension of the attached file here
  content_type: 'image/jpg' # use the mime type of the attached file here
)

user5.photo.attach(
  io: File.open("public/images/clothilde.png"),
  filename: "clothilde.png", # use the extension of the attached file here
  content_type: 'image/jpg' # use the mime type of the attached file here
)

default_user.photo.attach(
  io: File.open("public/images/clothilde.png"),
  filename: "clothilde.png", # use the extension of the attached file here
  content_type: 'image/jpg' # use the mime type of the attached file here
)


# CATEGORIES = ["Entrée", "Plat principal", "Accompagnement", "Dessert", "Apéritif", "Boisson", "Sauce", "Végétarien", "Vegan", "Sans gluten", "Sans lactose", "Français", "Italien", "Chinois", "Africain", "Indien", "Coréen", "Libanais", "Thaï", "Japonais", "Mexicain", "Espagnol", "Thaïlandais", "Américain", "Méditerranéen", "Turc"]

# INGREDIENTS = ['farine', 'levure', 'sel', 'sucre vanillé', 'sucre', 'beurre', 'oeuf', 'chocolat', 'pâte brisée', 'lardons fumés', 'crème fraîche', 'lait', 'oeufs', 'fromage râpé', 'poivre', 'noix de muscade', 'salade romaine', 'blancs de poulet', 'croûtons', 'parmesan', 'sauce César', "huile d'olive", 'aubergine', 'courgette', 'poivron rouge', 'poivron jaune', 'tomates', 'oignon', 'ail', 'herbes de Provence', 'jaunes d’oeufs', 'crème liquide', 'vanille', 'sucre roux', 'riz arborio', 'champignons de Paris', 'bouillon de légumes', 'vin blanc', 'épinards', 'fromage de chèvre', 'pommes', 'cannelle', 'oignons', 'bouillon de boeuf', 'baguette', 'pomme de terre', 'carotte', 'pois chiches', 'lait de coco', 'pâte de curry', 'huile', 'coriandre fraîche', 'banane', 'orange', 'raisin', 'fraise', 'citron', 'avocat', 'pêche', 'mangue', 'poire', 'cerise', 'ananas', 'melon', 'pastèque', 'kiwi', 'pamplemousse', 'citron vert', 'myrtille', 'papaye', 'framboise', 'nectarine', 'litchi', 'mandarine', 'fruit de la passion', 'grenade', 'figue', 'kaki', 'canneberge', 'carambole', 'jacquier', 'durian', 'tamarin', 'goji', 'açaï', 'coing', 'kumquat', 'prune', 'abricot', 'mûre', 'raisin sec', 'date', 'noix de coco', 'brocoli', 'poivron', 'laitue', 'concombre', 'chou', 'épinard', 'aubergine', 'asperge', 'chou-fleur', 'champignon', 'pois', 'haricot vert', 'maïs', 'betterave', 'chou de bruxelles', 'chou kale', 'endive', 'fenouil', 'gombo', 'navet', 'radis', 'courge', 'blette', 'céleri', 'artichaut', 'chou-rave', 'échalote', 'gingembre', 'ail', 'patate douce', 'taro', 'manioc', 'poireau', 'bambou', 'radis daïkon', 'chou chinois', 'pak choi', 'chou frisé', 'algue', 'piment', 'citrouille', 'persil', 'coriandre', 'menthe', 'basilic', 'poulet', 'bœuf', 'porc', 'agneau', 'saumon', 'crevettes', 'thon', 'moules', 'canard', 'dinde', 'lapin', 'veau', 'cerf', 'sanglier', 'saucisses', 'bacon', 'jambon', 'poulpes', 'calamars', 'homard', 'crabe', 'huîtres', 'sardines', 'maquereaux', 'anguilles', 'salami', 'chorizo', 'bresaola', 'mortadelle', 'foie de poulet', 'foie de veau', 'cœur de poulet', 'coeur de bœuf', 'langue de bœuf', 'joues de porc', 'joues de bœuf', 'bar', 'dorade', 'lotte', 'saint-jacques', 'palourdes', 'langoustines', 'écrevisses', 'truite', 'lait', 'beurre', 'cheddar', 'parmesan', 'mozzarella', 'feta', 'crème fraîche', 'yaourt', 'crème épaisse', 'fromage bleu', 'ricotta', 'mascarpone', 'oeufs de caille', 'gouda', 'edam', 'camembert', 'brie', 'roquefort', 'lait d\'amande', 'lait de soja', 'lait fermenté', 'lait d\'avoine', 'riz', 'pâtes', 'lentilles', 'haricots noirs', 'haricots rouges', 'haricots blancs', 'pois chiches', 'quinoa', 'avoine', 'orge', 'millet', 'épeautre', 'sarrasin', 'farine de coco', 'farine de riz', 'haricots azuki', 'haricots mungo', 'farine de tapioca', 'farine de pois chiche', 'polenta', 'couscous', 'bulgur', 'farro', 'seigle', 'teff', 'coco', 'brésil', 'dattes', 'abricots secs', 'figues sèches', 'pruneaux', 'graines de tournesol', 'graines de nigelle', 'graines de fenouil', 'huile de tournesol', 'huile de coco', 'vinaigre balsamique', 'vinaigre de cidre', 'huile de sésame', 'huile d\'arachide', 'huile d\'avocat', 'huile de lin', 'huile de noix', 'vinaigre de sherry', 'vinaigre de malt', 'sauce hoisin', 'sauce aux prunes', 'sauce chili', 'sucre blanc', 'sucre brun', 'farine de blé', 'levure chimique', 'miel', 'chocolat pépites', 'chocolat en poudre', 'amandes', 'noix', 'noix de pécan', 'noisettes', 'graines de pavot', 'noix de macadamia', 'pistaches', 'noix de coco', 'safran', 'cardamome', 'clou de girofle', 'muscade', 'anis étoilé', 'fenugrec', 'moutarde (graines)', 'wasabi', 'sauce soja', 'sauce Worcestershire', 'vinaigre de riz', 'tahini', 'pesto', 'curry (poudre)', 'curry (pâte)', 'piment (frais)', 'piment (en poudre)', 'piment (flocons)', 'gingembre frais', 'ail en poudre', 'cannelle', 'feuilles de laurier', 'estragon', 'marjolaine', 'poudre de chili', 'sauce teriyaki', 'miso', 'ketchup', 'mayonnaise', 'noix du Brésil', 'graines de lin', 'graines de sésame', 'levure boulanger', 'levure nutritionnelle', 'nutella', 'beurre de cacahuète', 'gelée de fruits', 'sirop d\'érable', 'sirop d\'agave', 'vinaigre balsamique de Modène', 'chapelure', 'poudre de cacao', 'extrait de vanille', 'agar-agar', 'café', 'thé vert', 'thé noir', 'chocolat noir', 'chocolat au lait', 'sucre de coco', 'sucre glace', 'pâte de curry', 'tamarinde', 'pâte de tomate', 'harissa', 'kimchi', 'sauerkraut', 'algues séchées', 'panko (chapelure japonaise)', 'semoule', 'vermicelles de riz', 'nouilles soba', 'nouilles udon', 'pignons', 'poisson blanc', 'tortillas de maïs', 'chou blanc', 'jus de citron vert', 'tomates cerises', "flocons d'avoine", 'fromage râpé', 'pain à burger', 'sucre en poudre', 'poivron vert', 'thym', 'betteraves', 'pain' ]


puts 'creating categories...'
CATEGORIES.each do |category|
  Category.create!(name: category)
end

puts 'creating ingredients...'
INGREDIENTS.each do |ingredient|
  Ingredient.create!(name: ingredient)
end

recipes_raw = [
  {
    title: 'Cookies maison',
    image_name: 'cookies_maison.webp',
    category_name: 'Dessert',
    user_email: 'julia@gmail.com',
    difficulty: 'Facile',
    cooking_time: 15,
    preparation_time: 10,
    number_of_servings: 4,
    note: 'Recette de cookies facile et rapide à réaliser',
    ingredients: [
      { name: 'farine', quantity_value: 150, quantity_unit: 'g' },
      { name: 'levure', quantity_value: 1, quantity_unit: 'c. à café' },
      { name: 'sel', quantity_value: 1, quantity_unit: 'c. à café' },
      { name: 'sucre vanillé', quantity_value: 1, quantity_unit: 'sachet' },
      { name: 'sucre', quantity_value: 85, quantity_unit: 'g' },
      { name: 'beurre', quantity_value: 85, quantity_unit: 'g' },
      { name: 'oeuf', quantity_value: 1, quantity_unit: '' },
      { name: 'chocolat', quantity_value: 100, quantity_unit: 'g' }
    ],
    steps: [
      { step_number: 1, instruction: 'Détailler le chocolat en pépites.' },
      { step_number: 2, instruction: "Préchauffer le four à 180°C (thermostat 6). Dans un saladier, mettre 75 g de beurre, le sucre, l'oeuf entier, la vanille et mélanger le tout avec une cuillère en bois." },
      { step_number: 3, instruction: 'Ajouter petit à petit la farine mélangée à la levure, le sel et le chocolat.' },
      { step_number: 4, instruction: 'Avec une feuille de papier essuie-tout, beurrer une plaque allant au four et former les cookies sur la plaque. Pour former les cookies, utiliser 2 cuillères à soupe et faire des petits tas espacés les uns des autres; ils grandiront à la cuisson.' },
      { step_number: 5, instruction: 'Enfourner pour 10 minutes de cuisson.' }
    ]
  },
  {
    title: 'Quiche lorraine',
    image_name: 'quiche_lorraine.jpg',
    category_name: 'Plat principal',
    user_email: 'julia@gmail.com',
    difficulty: 'Moyen',
    cooking_time: 35,
    preparation_time: 20,
    number_of_servings: 6,
    note: 'Très simple pour les soirs de flemme.',
    ingredients: [
      { name: 'pâte brisée', quantity_value: 1, quantity_unit: 'rouleau' },
      { name: 'lardons fumés', quantity_value: 200, quantity_unit: 'g' },
      { name: 'crème fraîche', quantity_value: 200, quantity_unit: 'ml' },
      { name: 'lait', quantity_value: 100, quantity_unit: 'ml' },
      { name: 'oeufs', quantity_value: 3, quantity_unit: '' },
      { name: 'fromage râpé', quantity_value: 100, quantity_unit: 'g' },
      { name: 'sel', quantity_value: 1, quantity_unit: 'c. à café' },
      { name: 'poivre', quantity_value: 1, quantity_unit: 'c. à café' },
      { name: 'noix de muscade', quantity_value: 1, quantity_unit: 'pincée' }
    ],
    steps: [
      { step_number: 1, instruction: 'Préchauffer le four à 180°C (thermostat 6). Étaler la pâte dans un moule à tarte, piquer le fond avec une fourchette.' },
      { step_number: 2, instruction: 'Faire revenir les lardons dans une poêle sans ajouter de matière grasse. Répartir sur le fond de tarte.' },
      { step_number: 3, instruction: 'Dans un saladier, battre les oeufs avec la crème et le lait. Assaisonner de sel, poivre et muscade. Verser sur les lardons.' },
      { step_number: 4, instruction: 'Saupoudrer de fromage râpé et enfourner pour 35 minutes de cuisson.' }
    ]
  },
  {
    title: 'Salade César',
    image_name: 'salade_cesar.jpeg',
    category_name: 'Entrée',
    user_email: 'julia@gmail.com',
    difficulty: 'Facile',
    cooking_time: 0,
    preparation_time: 15,
    number_of_servings: 4,
    note: 'Très bonne et rapide, idéale en entrée ou en plat principal.',
    ingredients: [
      { name: 'salade romaine', quantity_value: 1, quantity_unit: 'tête' },
      { name: 'blancs de poulet', quantity_value: 2, quantity_unit: 'unités' },
      { name: 'croûtons', quantity_value: 100, quantity_unit: 'g' },
      { name: 'parmesan', quantity_value: 50, quantity_unit: 'g' },
      { name: 'sauce César', quantity_value: 100, quantity_unit: 'ml' },
      { name: "huile d'olive", quantity_value: '', quantity_unit: '' },
      { name: 'sel', quantity_value: '', quantity_unit: '' },
      { name: 'poivre', quantity_value: '', quantity_unit: '' }
    ],
    steps: [
      { step_number: 1, instruction: 'Laver et couper la salade. La disposer dans un grand saladier.' },
      { step_number: 2, instruction: 'Griller les blancs de poulet à la poêle avec un peu d\'huile d\'olive, sel et poivre. Couper en tranches et ajouter à la salade.' },
      { step_number: 3, instruction: 'Ajouter les croûtons et le parmesan râpé. Verser la sauce César et mélanger délicatement.' }
    ]
  },
  {
    title: 'Ratatouille',
    image_name: 'ratatouille.jpg',
    category_name: 'Accompagnement',
    user_email: 'pierre@gmail.com',
    difficulty: 'Facile',
    cooking_time: 40,
    preparation_time: 20,
    number_of_servings: 4,
    note: 'Idéal pour accompagner un plat.',
    ingredients: [
      { name: 'aubergine', quantity_value: 1, quantity_unit: '' },
      { name: 'courgette', quantity_value: 2, quantity_unit: '' },
      { name: 'poivron rouge', quantity_value: 1, quantity_unit: '' },
      { name: 'poivron jaune', quantity_value: 1, quantity_unit: '' },
      { name: 'tomates', quantity_value: 4, quantity_unit: '' },
      { name: 'oignon', quantity_value: 1, quantity_unit: '' },
      { name: 'ail', quantity_value: 2, quantity_unit: 'gousses' },
      { name: "huile d'olive", quantity_value: 3, quantity_unit: 'c. à soupe' },
      { name: 'herbes de Provence', quantity_value: 1, quantity_unit: 'c. à soupe' },
      { name: 'sel', quantity_value: 1, quantity_unit: 'c. à café' },
      { name: 'poivre', quantity_value: 1, quantity_unit: 'c. à café' }
    ],
    steps: [
      { step_number: 1, instruction: 'Couper tous les légumes en morceaux de taille moyenne.' },
      { step_number: 2, instruction: 'Dans une grande poêle, chauffer l’huile d’olive et y faire revenir l’oignon et l’ail.' },
      { step_number: 3, instruction: 'Ajouter les poivrons, puis les aubergines et les courgettes. Laisser mijoter à feu moyen pendant 10 minutes.' },
      { step_number: 4, instruction: 'Incorporer les tomates, les herbes de Provence, le sel et le poivre. Couvrir et laisser mijoter à feu doux pendant environ 30 minutes.' }
    ]
  },
  {
    title: 'Crème brûlée',
    image_name: 'creme_brulee.webp',
    category_name: 'Dessert',
    user_email: 'pierre@gmail.com',
    difficulty: 'Difficile',
    cooking_time: 45,
    preparation_time: 15,
    number_of_servings: 4,
    note: 'Excellente, à refaire sans hésiter.',
    ingredients: [
      { name: 'jaunes d’oeufs', quantity_value: 6, quantity_unit: '' },
      { name: 'sucre', quantity_value: 100, quantity_unit: 'g' },
      { name: 'crème liquide', quantity_value: 500, quantity_unit: 'ml' },
      { name: 'vanille', quantity_value: 1, quantity_unit: 'gousse' },
      { name: 'sucre roux', quantity_value: 4, quantity_unit: 'c. à soupe' }
    ],
    steps: [
      { step_number: 1, instruction: 'Préchauffer le four à 100°C. Fendre la gousse de vanille en deux et gratter les graines.' },
      { step_number: 2, instruction: 'Chauffer la crème avec la vanille (gousse et graines) sans la faire bouillir. Laisser infuser.' },
      { step_number: 3, instruction: 'Fouetter les jaunes d’œufs avec le sucre jusqu’à ce que le mélange blanchisse. Verser la crème vanillée en filtrant, tout en fouettant.' },
      { step_number: 4, instruction: 'Répartir la préparation dans des ramequins. Cuire au bain-marie dans le four pendant 40 à 45 minutes.' },
      { step_number: 5, instruction: 'Laisser refroidir, puis saupoudrer de sucre roux et caraméliser avec un chalumeau de cuisine avant de servir.' }
    ]
  },
  {
    title: 'Risotto aux champignons',
    image_name: 'risotto_champignons.jpg',
    category_name: 'Plat principal',
    user_email: 'pierre@gmail.com',
    difficulty: 'Moyen',
    cooking_time: 25,
    preparation_time: 10,
    number_of_servings: 4,
    note: 'Un risotto crémeux, parfait pour un dîner italien authentique.',
    ingredients: [
      { name: 'riz arborio', quantity_value: 350, quantity_unit: 'g' },
      { name: 'champignons de Paris', quantity_value: 300, quantity_unit: 'g' },
      { name: 'oignon', quantity_value: 1, quantity_unit: 'pièce' },
      { name: 'bouillon de légumes', quantity_value: 1, quantity_unit: 'l' },
      { name: 'vin blanc', quantity_value: 100, quantity_unit: 'ml' },
      { name: 'parmesan', quantity_value: 50, quantity_unit: 'g' },
      { name: 'beurre', quantity_value: 50, quantity_unit: 'g' },
      { name: "huile d'olive", quantity_value: 2, quantity_unit: 'c. à soupe' },
      { name: 'sel', quantity_value: 1, quantity_unit: 'c. à café' },
      { name: 'poivre', quantity_value: 1, quantity_unit: 'c. à café' }
    ],
    steps: [
      { step_number: 1, instruction: 'Nettoyer et couper les champignons en lamelles. Hacher l’oignon finement.' },
      { step_number: 2, instruction: 'Dans une grande casserole, faire revenir l’oignon avec l’huile d’olive. Ajouter le riz et le faire nacrer.' },
      { step_number: 3, instruction: 'Déglacer avec le vin blanc et laisser réduire. Ajouter les champignons et une louche de bouillon. Laisser absorber avant d’ajouter plus de bouillon. Répéter jusqu’à cuisson complète du riz.' },
      { step_number: 4, instruction: 'Hors du feu, ajouter le beurre et le parmesan. Mélanger jusqu’à obtenir une consistance crémeuse. Saler et poivrer avant de servir.' }
    ]
  },
  {
    title: 'Tarte aux épinards et chèvre',
    image_name: 'tarte_aux_epinards_et_chevre.webp',
    category_name: ['Plat principal', 'Végétarien'],
    user_email: 'pierre@gmail.com',
    difficulty: 'Facile',
    cooking_time: 30,
    preparation_time: 15,
    number_of_servings: 4,
    note: 'Une tarte végé super simple à réaliser.',
    ingredients: [
      { name: 'pâte brisée', quantity_value: 1, quantity_unit: 'rouleau' },
      { name: 'épinards', quantity_value: 300, quantity_unit: 'g' },
      { name: 'fromage de chèvre', quantity_value: 200, quantity_unit: 'g' },
      { name: 'crème fraîche', quantity_value: 100, quantity_unit: 'ml' },
      { name: 'oeufs', quantity_value: 3, quantity_unit: 'pièces' },
      { name: 'sel', quantity_value: 1, quantity_unit: 'c. à café' },
      { name: 'poivre', quantity_value: 1, quantity_unit: 'c. à café' },
      { name: 'noix de muscade', quantity_value: 1, quantity_unit: 'pincée' }
    ],
    steps: [
      { step_number: 1, instruction: 'Préchauffer le four à 180°C (thermostat 6). Étaler la pâte dans un moule à tarte et piquer le fond avec une fourchette.' },
      { step_number: 2, instruction: 'Blanchir les épinards dans de l’eau bouillante salée, puis les égoutter et les presser pour retirer l’excès d’eau.' },
      { step_number: 3, instruction: 'Dans un saladier, battre les oeufs avec la crème fraîche, saler, poivrer et ajouter une pincée de muscade.' },
      { step_number: 4, instruction: 'Répartir les épinards sur le fond de tarte, ajouter des rondelles de fromage de chèvre puis verser le mélange oeufs-crème.' },
      { step_number: 5, instruction: 'Cuire au four pendant 30 minutes jusqu’à ce que la tarte soit dorée et ferme au toucher.' }
    ]
  },
  {
    title: 'Tarte aux pommes',
    image_name: 'tarte_aux_pommes.avif',
    category_name: 'Dessert',
    user_email: 'zena@gmail.com',
    difficulty: 'facile',
    cooking_time: 30,
    preparation_time: 20,
    number_of_servings: 6,
    note: 'La recette de ma grand-mère.',
    ingredients: [
      { name: 'pâte brisée', quantity_value: 1, quantity_unit: 'rouleau' },
      { name: 'pommes', quantity_value: 5, quantity_unit: 'pièces' },
      { name: 'sucre', quantity_value: 100, quantity_unit: 'g' },
      { name: 'beurre', quantity_value: 50, quantity_unit: 'g' },
      { name: 'cannelle', quantity_value: 1, quantity_unit: 'c. à café' }
    ],
    steps: [
      { step_number: 1, instruction: 'Préchauffer le four à 180°C (thermostat 6). Étaler la pâte dans un moule à tarte et piquer le fond avec une fourchette.' },
      { step_number: 2, instruction: 'Éplucher les pommes et les couper en fines lamelles. Les disposer sur la pâte.' },
      { step_number: 3, instruction: 'Saupoudrer de sucre et de cannelle, puis répartir des petits morceaux de beurre sur le dessus.' },
      { step_number: 4, instruction: 'Enfourner pour environ 30 minutes, jusqu’à ce que les pommes soient dorées et la pâte croustillante.' }
    ]
  },
  {
    title: 'Soupe à l’oignon',
    image_name: 'soupe_a_lognon.jpg',
    category_name: 'Entrée',
    user_email: 'zena@gmail.com',
    difficulty: 'Facile',
    cooking_time: 45,
    preparation_time: 15,
    number_of_servings: 4,
    note: 'Un plat réconfortant.',
    ingredients: [
      { name: 'oignons', quantity_value: 6, quantity_unit: '' },
      { name: 'beurre', quantity_value: 50, quantity_unit: 'g' },
      { name: 'farine', quantity_value: 2, quantity_unit: 'c. à soupe' },
      { name: 'bouillon de boeuf', quantity_value: 1.5, quantity_unit: 'l' },
      { name: 'baguette', quantity_value: 1, quantity_unit: '' },
      { name: 'fromage râpé', quantity_value: 100, quantity_unit: 'g' },
      { name: 'sel', quantity_value: 1, quantity_unit: 'c. à café' },
      { name: 'poivre', quantity_value: 1, quantity_unit: 'c. à café' }
    ],
    steps: [
      { step_number: 1, instruction: 'Émincer finement les oignons. Dans une grande casserole, faire fondre le beurre et y ajouter les oignons. Laisser caraméliser à feu doux pendant environ 30 minutes, en remuant de temps en temps.' },
      { step_number: 2, instruction: 'Saupoudrer les oignons de farine, bien mélanger, puis verser le bouillon de bœuf. Porter à ébullition, puis laisser mijoter à feu doux pendant 15 minutes. Saler et poivrer à votre convenance.' },
      { step_number: 3, instruction: 'Préchauffer le grill du four. Verser la soupe dans des bols résistants à la chaleur, ajouter une tranche de baguette dans chaque bol, puis couvrir de fromage râpé.' },
      { step_number: 4, instruction: 'Gratiner sous le grill jusqu’à ce que le fromage soit doré et bouillonnant.' }
    ]
  },
  {
    title: 'Curry de légumes',
    image_name: 'curry_de_legumes.jpg',
    category_name: ['Plat principal', 'Vegan', 'Sans gluten', 'Sans lactose'],
    user_email: 'zena@gmail.com',
    difficulty: 'Facile',
    cooking_time: 30,
    preparation_time: 15,
    number_of_servings: 4,
    note: 'Très bon plat vegan.',
    ingredients: [
      { name: 'pomme de terre', quantity_value: 2, quantity_unit: '' },
      { name: 'carotte', quantity_value: 2, quantity_unit: '' },
      { name: 'pois chiches', quantity_value: 400, quantity_unit: 'g (1 boîte)' },
      { name: 'lait de coco', quantity_value: 400, quantity_unit: 'ml' },
      { name: 'pâte de curry', quantity_value: 2, quantity_unit: 'c. à soupe' },
      { name: 'oignon', quantity_value: 1, quantity_unit: '' },
      { name: 'ail', quantity_value: 2, quantity_unit: 'gousses' },
      { name: 'huile', quantity_value: 1, quantity_unit: 'c. à soupe' },
      { name: 'épinards', quantity_value: 100, quantity_unit: 'g' },
      { name: 'sel', quantity_value: 1, quantity_unit: 'c. à café' },
      { name: 'coriandre fraîche', quantity_value: 2, quantity_unit: 'c. à soupe' }
    ],
    steps: [
      { step_number: 1, instruction: 'Éplucher et couper les pommes de terre et les carottes en dés. Émincer l’oignon et hacher l’ail.' },
      { step_number: 2, instruction: 'Dans une grande poêle ou un wok, faire chauffer l’huile et y faire revenir l’oignon et l’ail. Ajouter la pâte de curry et remuer pendant une minute.' },
      { step_number: 3, instruction: 'Ajouter les pommes de terre, les carottes et les pois chiches égouttés. Verser le lait de coco et un peu d’eau si nécessaire, puis laisser mijoter à couvert pendant environ 20 minutes ou jusqu’à ce que les légumes soient tendres.' },
      { step_number: 4, instruction: 'Incorporer les épinards et laisser cuire jusqu’à ce qu’ils soient flétris. Assaisonner avec le sel.' },
      { step_number: 5, instruction: 'Servir chaud, garni de coriandre fraîche hachée.' }
    ]
  },
  {
    title: "Pâtes au pesto",
    image_name: "pates_pesto.webp",
    category_name: "Plat principal",
    user_email: "clothilde@gmail.com",
    difficulty: "Facile",
    cooking_time: 15,
    preparation_time: 10,
    number_of_servings: 4,
    note: "Un plat italien classique, simple et délicieux.",
    ingredients: [
      { name: "pâtes", quantity_value: 400, quantity_unit: "g" },
      { name: "basilic", quantity_value: 50, quantity_unit: "g" },
      { name: "ail", quantity_value: 2, quantity_unit: "gousses" },
      { name: "pignons", quantity_value: 50, quantity_unit: "g" },
      { name: "parmesan", quantity_value: 50, quantity_unit: "g" },
      { name: "huile d'olive", quantity_value: 80, quantity_unit: "ml" },
      { name: "sel", quantity_value: 1, quantity_unit: "pincée" },
      { name: "poivre", quantity_value: 1, quantity_unit: "pincée" }
    ],
    steps: [
      { step_number: 1, instruction: "Cuire les pâtes dans de l'eau bouillante salée selon les instructions sur l'emballage. Égoutter et réserver." },
      { step_number: 2, instruction: "Dans un mixeur, ajouter le basilic, l'ail, les pignons de pin, le parmesan, l'huile d'olive, le sel et le poivre. Mixer jusqu'à obtenir une sauce homogène." },
      { step_number: 3, instruction: "Dans une grande poêle, faire chauffer la sauce pesto à feu doux pendant quelques minutes." },
      { step_number: 4, instruction: "Ajouter les pâtes cuites à la sauce pesto dans la poêle et mélanger délicatement jusqu'à ce que les pâtes soient bien enrobées de sauce." },
      { step_number: 5, instruction: "Servir chaud avec un peu de parmesan râpé supplémentaire, si désiré." }
    ]
  },
  {
    title: "Tacos au poisson",
    image_name: "tacos_poisson.jpg",
    category_name: "Plat principal",
    user_email: "clothilde@gmail.com",
    difficulty: "Intermédiaire",
    cooking_time: 30,
    preparation_time: 20,
    number_of_servings: 4,
    note: "Une option légère et savoureuse pour les amateurs de fruits de mer.",
    ingredients: [
      { name: "poisson blanc", quantity_value: 500, quantity_unit: "g" },
      { name: "tortillas de maïs", quantity_value: 8, quantity_unit: "" },
      { name: "chou blanc", quantity_value: 1, quantity_unit: "" },
      { name: "avocat", quantity_value: 2, quantity_unit: "" },
      { name: "tomates", quantity_value: 2, quantity_unit: "" },
      { name: "coriandre", quantity_value: 1, quantity_unit: "botte" },
      { name: "jus de citron vert", quantity_value: 2, quantity_unit: "" },
      { name: "huile d'olive", quantity_value: 2, quantity_unit: "c. à soupe" }
  ],
    steps: [
      { step_number: 1, instruction: "Préparer les ingrédients : couper le chou blanc en lamelles, trancher les avocats et les tomates, et hacher la coriandre." },
      { step_number: 2, instruction: "Dans une poêle, chauffer l'huile d'olive. Cuire les filets de poisson assaisonnés de sel et de poivre pendant environ 3-4 minutes de chaque côté, ou jusqu'à ce qu'ils soient bien cuits et dorés." },
      { step_number: 3, instruction: "Dans un bol, mélanger le chou blanc avec le jus de citron vert. Assaisonner avec du sel et du poivre selon votre goût." },
      { step_number: 4, instruction: "Réchauffer les tortillas dans une poêle ou au micro-ondes selon les instructions sur l'emballage." },
      { step_number: 5, instruction: "Assembler les tacos : mettre une portion de chou blanc mariné sur chaque tortilla, suivie d'un morceau de poisson cuit, des tranches d'avocat, des rondelles de tomate et de la coriandre hachée." },
      { step_number: 6, instruction: "Replier les tortillas et servir chaud avec des quartiers de citron vert, si désiré." }
  ]
  },
  {
    title: "Salade de quinoa aux légumes rôtis",
    image_name: "salade_quinoa_legumes.jpg",
    category_name: "Entrée",
    user_email: "isaiah@gmail.com",
    difficulty: "Intermédiaire",
    cooking_time: 45,
    preparation_time: 20,
    number_of_servings: 4,
    note: "Une salade nourrissante et colorée, parfaite pour un déjeuner sain et équilibré.",
    ingredients: [
      { name: "quinoa", quantity_value: 200, quantity_unit: "g" },
      { name: "aubergine", quantity_value: 1, quantity_unit: "" },
      { name: "courgette", quantity_value: 1, quantity_unit: "" },
      { name: "poivron rouge", quantity_value: 1, quantity_unit: "" },
      { name: "tomates cerises", quantity_value: 200, quantity_unit: "g" },
      { name: "huile d'olive", quantity_value: 3, quantity_unit: "c. à soupe" },
      { name: "vinaigre balsamique", quantity_value: 2, quantity_unit: "c. à soupe" },
      { name: "miel", quantity_value: 1, quantity_unit: "c. à soupe" },
      { name: "ail", quantity_value: 2, quantity_unit: "gousses" },
      { name: "sel", quantity_value: 1, quantity_unit: "pincée" },
      { name: "poivre", quantity_value: 1, quantity_unit: "pincée" },
      { name: "basilic", quantity_value: 10, quantity_unit: "" }
    ],
    steps: [
      { step_number: 1, instruction: "Préchauffer le four à 200°C (thermostat 6-7)." },
      { step_number: 2, instruction: "Rincer le quinoa à l'eau froide. Dans une casserole, porter 400 ml d'eau à ébullition. Ajouter le quinoa et cuire à feu doux pendant environ 15 minutes, ou jusqu'à ce que les graines soient tendres et aient absorbé toute l'eau. Laisser refroidir." },
      { step_number: 3, instruction: "Couper l'aubergine, la courgette et le poivron rouge en petits dés. Couper les tomates cerises en deux." },
      { step_number: 4, instruction: "Dans un bol, mélanger l'huile d'olive, le vinaigre balsamique, le miel, l'ail émincé, le sel et le poivre." },
      { step_number: 5, instruction: "Disposer les légumes coupés sur une plaque de cuisson. Verser la moitié de la vinaigrette sur les légumes et bien mélanger pour les enrober." },
      { step_number: 6, instruction: "Rôtir les légumes au four préchauffé pendant environ 20-25 minutes, ou jusqu'à ce qu'ils soient dorés et tendres." },
      { step_number: 7, instruction: "Dans un grand bol, mélanger le quinoa cuit avec les légumes rôtis. Ajouter le reste de la vinaigrette et mélanger délicatement." },
      { step_number: 8, instruction: "Servir la salade de quinoa aux légumes rôtis garnie de feuilles de basilic frais." }
    ]
  },
  {
    title: "Burger végétarien aux champignons",
    image_name: "burger_vegetarien.jpg",
    category_name: "Plat principal",
    user_email: "isaiah@gmail.com",
    difficulty: "Intermédiaire",
    cooking_time: 30,
    preparation_time: 20,
    number_of_servings: 4,
    note: "Une alternative délicieuse et saine au burger traditionnel.",
    ingredients: [
      { name: "champignons de Paris", quantity_value: 400, quantity_unit: "g" },
      { name: "oignons", quantity_value: 1, quantity_unit: "" },
      { name: "ail", quantity_value: 2, quantity_unit: "gousses" },
      { name: "flocons d'avoine", quantity_value: 100, quantity_unit: "g" },
      { name: "oeufs", quantity_value: 2, quantity_unit: "" },
      { name: "fromage râpé", quantity_value: 50, quantity_unit: "g" },
      { name: "pain à burger", quantity_value: 4, quantity_unit: "" },
      { name: "laitue", quantity_value: 4, quantity_unit: "" },
      { name: "tomates", quantity_value: 2, quantity_unit: "" },
      { name: "sel", quantity_value: 1, quantity_unit: "pincée" },
      { name: "poivre", quantity_value: 1, quantity_unit: "pincée" },
      { name: "huile d'olive", quantity_value: 2, quantity_unit: "c. à soupe" }
    ],
    steps: [
      { step_number: 1, instruction: "Nettoyer et hacher finement les champignons, l'oignon et l'ail." },
      { step_number: 2, instruction: "Dans une poêle, faire chauffer l'huile d'olive à feu moyen. Faire revenir l'oignon et l'ail jusqu'à ce qu'ils soient dorés." },
      { step_number: 3, instruction: "Ajouter les champignons hachés dans la poêle et faire cuire pendant environ 5-7 minutes, jusqu'à ce qu'ils soient dorés et que toute l'eau soit évaporée. Assaisonner avec du sel et du poivre." },
      { step_number: 4, instruction: "Dans un grand bol, mélanger les champignons cuits, les flocons d'avoine, les œufs battus et le fromage râpé. Bien mélanger jusqu'à obtenir une pâte homogène." },
      { step_number: 5, instruction: "Former des galettes à partir du mélange de champignons et les faire cuire dans une poêle chaude avec un peu d'huile d'olive, environ 3-4 minutes de chaque côté, jusqu'à ce qu'elles soient dorées et croustillantes." },
      { step_number: 6, instruction: "Pendant ce temps, toaster légèrement les pains à burger. Laver et couper les tomates en rondelles." },
      { step_number: 7, instruction: "Assembler les burgers : placer une feuille de laitue sur la base du pain, ajouter une galette de champignons, quelques rondelles de tomate et une cuillère de sauce barbecue, si désiré. Terminer avec le haut du pain." },
      { step_number: 8, instruction: "Servir chaud et déguster avec des frites ou une salade verte." }
    ]
  },
  {
    title: "Ceviche de crevettes",
    image_name: "ceviche_crevettes.jpg",
    category_name: "Entrée",
    user_email: "isaiah@gmail.com",
    difficulty: "Facile",
    cooking_time: 15,
    preparation_time: 30,
    number_of_servings: 4,
    note: "Un plat frais et acidulé, parfait pour une entrée estivale.",
    ingredients: [
      { name: "crevettes", quantity_value: 400, quantity_unit: "g" },
      { name: "citron vert", quantity_value: 4, quantity_unit: "" },
      { name: "citron", quantity_value: 1, quantity_unit: "" },
      { name: "tomates", quantity_value: 2, quantity_unit: "" },
      { name: "oignons", quantity_value: 1, quantity_unit: "" },
      { name: "coriandre", quantity_value: 1, quantity_unit: "botte" },
      { name: "sel", quantity_value: 1, quantity_unit: "pincée" },
      { name: "poivre", quantity_value: 1, quantity_unit: "pincée" }
    ],
    steps: [
      { step_number: 1, instruction: "Décortiquer les crevettes et les couper en morceaux si elles sont trop grosses. Les placer dans un grand bol." },
      { step_number: 2, instruction: "Presser le jus des citrons verts et du citron jaune sur les crevettes. Mélanger pour bien enrober les crevettes de jus de citron. Laisser mariner au réfrigérateur pendant au moins 20 minutes." },
      { step_number: 3, instruction: "Pendant ce temps, couper les tomates en petits dés, émincer finement l'oignon rouge et hacher la coriandre. Si vous utilisez du piment rouge, retirez les graines et les membranes internes, puis hachez-le finement." },
      { step_number: 4, instruction: "Ajouter les tomates, l'oignon rouge, la coriandre et le piment (si utilisé) aux crevettes marinées. Assaisonner avec du sel et du poivre selon votre goût. Mélanger délicatement." },
      { step_number: 5, instruction: "Répartir le ceviche de crevettes dans des bols individuels et servir immédiatement, accompagné de quartiers de citron vert supplémentaires, si désiré." }
    ]
  },
  {
    title: "Salade de fruits exotiques",
    image_name: "salade_fruits_exotiques.jpg",
    category_name: "Dessert",
    user_email: "clothilde@gmail.com",
    difficulty: "Facile",
    cooking_time: 15,
    preparation_time: 20,
    number_of_servings: 4,
    note: "Une explosion de saveurs tropicales dans chaque bouchée.",
    ingredients: [
      { name: "mangue", quantity_value: 1, quantity_unit: "" },
      { name: "ananas", quantity_value: 1, quantity_unit: "" },
      { name: "kiwi", quantity_value: 2, quantity_unit: "" },
      { name: "fruit de la passion", quantity_value: 2, quantity_unit: "" },
      { name: "banane", quantity_value: 1, quantity_unit: "" },
      { name: "jus de citron vert", quantity_value: 1, quantity_unit: "" },
      { name: "menthe", quantity_value: 1, quantity_unit: "botte" }
    ],
    steps: [
      { step_number: 1, instruction: "Éplucher et couper tous les fruits en morceaux, sauf les fruits de la passion." },
      { step_number: 2, instruction: "Couper les fruits de la passion en deux et récupérer la pulpe à l'aide d'une cuillère. Ajouter à la salade de fruits." },
      { step_number: 3, instruction: "Arroser les fruits avec le jus de citron vert pour éviter qu'ils ne s'oxydent." },
      { step_number: 4, instruction: "Ciseler finement les feuilles de menthe fraîche et les ajouter à la salade de fruits. Mélanger délicatement." },
      { step_number: 5, instruction: "Réfrigérer la salade de fruits pendant au moins 30 minutes avant de servir pour permettre aux saveurs de se mélanger." },
      { step_number: 6, instruction: "Juste avant de servir, saupoudrer de noix de coco râpée pour ajouter une touche de croquant, si désiré." }
    ]
  },
  {
    title: "Panna cotta à la vanille avec coulis de fruits rouges",
    image_name: "panna-cotta.jpg",
    category_name: "Dessert",
    user_email: "isaiah@gmail.com",
    difficulty: "Facile",
    cooking_time: 5,
    preparation_time: 15,
    number_of_servings: 4,
    note: "Un dessert italien léger et rafraîchissant, idéal pour conclure un repas sur une note douce.",
    ingredients: [
      { name: "feuilles de gélatine", quantity_value: 3, quantity_unit: "pièces" },
      { name: "crème liquide", quantity_value: 500, quantity_unit: "ml" },
      { name: "sucre", quantity_value: 100, quantity_unit: "g" },
      { name: "gousse de vanille", quantity_value: 1, quantity_unit: "pièce" },
      { name: "fruits rouges", quantity_value: 300, quantity_unit: "g" },
      { name: "eau", quantity_value: 50, quantity_unit: "ml" },
    ],
    steps: [
      { step_number: 1, instruction: "Faire tremper les feuilles de gélatine dans de l'eau froide pour les ramollir." },
      { step_number: 2, instruction: "Dans une casserole, faire chauffer la crème liquide avec le sucre et la gousse de vanille fendue en deux, sans laisser bouillir." },
      { step_number: 3, instruction: "Retirer la casserole du feu et ajouter les feuilles de gélatine essorées. Bien mélanger jusqu'à leur complète dissolution." },
      { step_number: 4, instruction: "Verser la préparation dans des verrines ou des moules, puis laisser refroidir à température ambiante avant de placer au réfrigérateur pendant au moins 4 heures." },
      { step_number: 5, instruction: "Pour le coulis, mixer les fruits rouges avec l'eau et le sucre jusqu'à l'obtention d'une sauce lisse. Filtrer pour retirer les pépins si nécessaire." },
      { step_number: 6, instruction: "Démouler la panna cotta sur des assiettes et napper de coulis de fruits rouges juste avant de servir." }
    ]
  },
  {
    title: "Ratatouille provençale",
    image_name: "ratatouille_provencale.jpg",
    category_name: "Plat principal",
    user_email: "clothilde@gmail.com",
    difficulty: "Facile",
    cooking_time: 60,
    preparation_time: 30,
    number_of_servings: 6,
    note: "Un plat traditionnel du sud de la France, plein de saveurs méditerranéennes.",
    ingredients: [
      { name: "aubergine", quantity_value: 1, quantity_unit: "" },
      { name: "courgette", quantity_value: 1, quantity_unit: "" },
      { name: "poivron rouge", quantity_value: 1, quantity_unit: "" },
      { name: "poivron vert", quantity_value: 1, quantity_unit: "" },
      { name: "tomates", quantity_value: 3, quantity_unit: "" },
      { name: "oignons", quantity_value: 1, quantity_unit: "" },
      { name: "ail", quantity_value: 2, quantity_unit: "gousses" },
      { name: "huile d'olive", quantity_value: 3, quantity_unit: "c. à soupe" },
      { name: "thym", quantity_value: 2, quantity_unit: "branches" },
      { name: "basilic", quantity_value: 10, quantity_unit: "" },
      { name: "sel", quantity_value: 1, quantity_unit: "pincée" },
      { name: "poivre", quantity_value: 1, quantity_unit: "pincée" }
    ],
    steps: [
      { step_number: 1, instruction: "Émincer l'oignon et hacher l'ail. Couper l'aubergine, la courgette, les poivrons et les tomates en dés." },
      { step_number: 2, instruction: "Dans une grande poêle, faire chauffer l'huile d'olive à feu moyen. Faire revenir l'oignon et l'ail jusqu'à ce qu'ils soient dorés." },
      { step_number: 3, instruction: "Ajouter les dés de poivrons dans la poêle et faire cuire pendant environ 5 minutes, jusqu'à ce qu'ils soient tendres." },
      { step_number: 4, instruction: "Incorporer les dés d'aubergine et de courgette dans la poêle. Faire cuire pendant 10 minutes en remuant de temps en temps." },
      { step_number: 5, instruction: "Ajouter les dés de tomates, le thym frais, le sel et le poivre dans la poêle. Laisser mijoter à feu doux pendant 20-25 minutes, jusqu'à ce que les légumes soient bien cuits et que la ratatouille ait épaissi." },
      { step_number: 6, instruction: "Servir chaud ou à température ambiante, garni de feuilles de basilic frais." }
  ]
},
{
  title: "Poulet rôti aux herbes de Provence",
  image_name: "poulet_roti_herbes_provence.jpg",
  category_name: "Plat principal",
  user_email: "julia@gmail.com",
  difficulty: "Facile",
  cooking_time: 90,
  preparation_time: 20,
  number_of_servings: 4,
  note: "Un plat traditionnellement savoureux, parfait pour un repas en famille ou entre amis.",
  ingredients: [
    { name: "poulet", quantity_value: 1, quantity_unit: "" },
    { name: "citron", quantity_value: 1, quantity_unit: "" },
    { name: "ail", quantity_value: 4, quantity_unit: "gousses" },
    { name: "herbes de Provence", quantity_value: 2, quantity_unit: "c. à soupe" },
    { name: "huile d'olive", quantity_value: 3, quantity_unit: "c. à soupe" },
    { name: "sel", quantity_value: 1, quantity_unit: "c. à café" },
    { name: "poivre", quantity_value: 1, quantity_unit: "c. à café" }
  ],
  steps: [
    { step_number: 1, instruction: "Préchauffer le four à 200°C (thermostat 6-7)." },
    { step_number: 2, instruction: "Rincer et sécher le poulet entier. Le placer dans un plat allant au four." },
    { step_number: 3, instruction: "Presser le jus du citron et le mélanger avec l'huile d'olive, les gousses d'ail écrasées, les herbes de Provence, le sel et le poivre dans un bol." },
    { step_number: 4, instruction: "Badigeonner le poulet avec ce mélange d'huile et d'épices, en veillant à bien enrober toute la surface." },
    { step_number: 5, instruction: "Placer le citron vidé à l'intérieur de la cavité du poulet." },
    { step_number: 6, instruction: "Enfourner le poulet et le laisser rôtir pendant environ 1 heure 30 minutes, en l'arrosant régulièrement avec les jus de cuisson, jusqu'à ce qu'il soit bien doré et cuit à cœur. Si la peau dore trop rapidement, la couvrir de papier aluminium." },
    { step_number: 7, instruction: "Laisser reposer le poulet quelques minutes avant de le découper et de le servir chaud, accompagné de légumes rôtis ou de pommes de terre." }
]
},
{
  title: "Salade de betteraves rôties et chèvre chaud",
  image_name: "salade_betteraves_chevre.jpg",
  category_name: "Entrée",
  user_email: "pierre@gmail.com",
  difficulty: "Facile",
  cooking_time: 60,
  preparation_time: 20,
  number_of_servings: 4,
  note: "Une entrée colorée et savoureuse, parfaite pour une touche d'élégance.",
  ingredients: [
    { name: "betteraves", quantity_value: 4, quantity_unit: "" },
    { name: "fromage de chèvre", quantity_value: 150, quantity_unit: "g" },
    { name: "salade romaine", quantity_value: 150, quantity_unit: "g" },
    { name: "noix", quantity_value: 50, quantity_unit: "g" },
    { name: "vinaigre balsamique", quantity_value: 2, quantity_unit: "c. à soupe" },
    { name: "miel", quantity_value: 1, quantity_unit: "c. à soupe" },
    { name: "huile d'olive", quantity_value: 2, quantity_unit: "c. à soupe" },
    { name: "sel", quantity_value: 1, quantity_unit: "pincée" },
    { name: "poivre", quantity_value: 1, quantity_unit: "pincée" }
  ],
  steps: [
    { step_number: 1, instruction: "Préchauffer le four à 200°C (thermostat 6-7)." },
    { step_number: 2, instruction: "Laver les betteraves et les couper en tranches épaisses. Les disposer sur une plaque de cuisson et les arroser d'un filet d'huile d'olive. Saler et poivrer. Enfourner et faire rôtir les betteraves pendant environ 40 minutes, jusqu'à ce qu'elles soient tendres." },
    { step_number: 3, instruction: "Pendant ce temps, préparer la vinaigrette en mélangeant le vinaigre balsamique, le miel et l'huile d'olive dans un bol. Assaisonner avec du sel et du poivre selon votre goût." },
    { step_number: 4, instruction: "Laver et essorer la salade verte, puis la disposer dans un grand saladier. Ajouter les noix concassées." },
    { step_number: 5, instruction: "Faire chauffer une poêle à feu moyen. Couper le fromage de chèvre frais en rondelles et les faire dorer quelques minutes de chaque côté dans la poêle chaude." },
    { step_number: 6, instruction: "Une fois les betteraves rôties, les disposer sur le lit de salade verte. Ajouter les rondelles de chèvre chaud sur le dessus." },
    { step_number: 7, instruction: "Arroser la salade avec la vinaigrette préparée juste avant de servir." },
    { step_number: 8, instruction: "Servir chaud et déguster cette délicieuse salade colorée et parfumée." }
  ]
},
{
  title: "Bruschetta aux tomates cerises et mozzarella",
  image_name: "bruschetta_tomates_mozzarella.jpg",
  category_name: "Entrée",
  user_email: "zena@gmail.com",
  difficulty: "Facile",
  cooking_time: 20,
  preparation_time: 10,
  number_of_servings: 4,
  note: "Une entrée estivale pleine de fraîcheur et de saveurs méditerranéennes.",
  ingredients: [
    { name: "pain", quantity_value: 1, quantity_unit: "" },
    { name: "tomates cerises", quantity_value: 250, quantity_unit: "g" },
    { name: "mozzarella", quantity_value: 150, quantity_unit: "g" },
    { name: "ail", quantity_value: 2, quantity_unit: "gousses" },
    { name: "basilic", quantity_value: 1, quantity_unit: "botte" },
    { name: "huile d'olive", quantity_value: 2, quantity_unit: "c. à soupe" },
    { name: "vinaigre balsamique", quantity_value: 1, quantity_unit: "c. à soupe" },
    { name: "sel", quantity_value: 1, quantity_unit: "pincée" },
    { name: "poivre", quantity_value: 1, quantity_unit: "pincée" }
  ],
  steps: [
    { step_number: 1, instruction: "Préchauffer le four à 180°C (thermostat 6)." },
    { step_number: 2, instruction: "Couper la baguette en tranches d'environ 1 cm d'épaisseur. Les disposer sur une plaque de cuisson et les faire toaster au four pendant quelques minutes, jusqu'à ce qu'elles soient légèrement dorées." },
    { step_number: 3, instruction: "Laver les tomates cerises et les couper en deux ou en quartiers selon leur taille. Couper la mozzarella en tranches." },
    { step_number: 4, instruction: "Peler et émincer finement les gousses d'ail. Ciseler les feuilles de basilic frais." },
    { step_number: 5, instruction: "Sur chaque tranche de pain grillé, disposer quelques quartiers de tomates cerises et une tranche de mozzarella." },
    { step_number: 6, instruction: "Saupoudrer d'ail émincé et de basilic ciselé sur le dessus. Arroser d'un filet d'huile d'olive et de vinaigre balsamique." },
    { step_number: 7, instruction: "Saler et poivrer selon votre goût." },
    { step_number: 8, instruction: "Enfourner les bruschettas pendant quelques minutes supplémentaires, juste assez pour faire fondre légèrement la mozzarella." },
    { step_number: 9, instruction: "Servir chaud et déguster ces délicieuses bruschettas à la tomate et à la mozzarella." }
  ]
}
]

recipes_raw.each do |recipe_raw|
  recipe = Recipe.create!(
    title: recipe_raw[:title],
    categories: [Category.find_by(name: recipe_raw[:category_name])],
    user: User.find_by(email: recipe_raw[:user_email]),
    difficulty: recipe_raw[:difficulty],
    cooking_time: recipe_raw[:cooking_time],
    preparation_time: recipe_raw[:preparation_time],
    number_of_servings: recipe_raw[:number_of_servings],
    note: recipe_raw[:note]
  )

  recipe.photo.attach(
    io: File.open("public/images/#{recipe_raw[:image_name]}"),
    filename: recipe_raw[:image_name], # use the extension of the attached file here
    content_type: 'image/jpg' # use the mime type of the attached file here
  )

  recipe.save!

  recipe_raw[:ingredients].each do |ingredient_raw|
    ingredient = Ingredient.find_by(name: ingredient_raw[:name])
    RecipeIngredient.create!(
      recipe: recipe,
      ingredient: ingredient,
      quantity_value: ingredient_raw[:quantity_value],
      quantity_unit: ingredient_raw[:quantity_unit]
    )
  end

  recipe_raw[:steps].each do |step_raw|
    PreparationStep.create!(
      recipe: recipe,
      step_number: step_raw[:step_number],
      instruction: step_raw[:instruction]
    )
  end
  puts "Created recipe: #{recipe.title}"
end

# Recipe.where.not(user_id: user1.id).shuffle.first(3).each do |recipe|
  # Favorite.create!(user: user1, recipe: recipe)
# end

# Recipe.where.not(user_id: [user1.id, user2.id]).order("RANDOM()").limit(3).each do |recipe|
#   Favorite.create!(user: user1, recipe: recipe)
# end

# Recipe.where.not(user_id: user2.id).shuffle.last(3).each do |recipe|
#   Favorite.create!(user: user2, recipe: recipe)
# end

# Recipe.where.not(user_id: [user1.id, user2.id]).order("RANDOM()").limit(3).each do |recipe|
#   Favorite.create!(user: user2, recipe: recipe)
# end
