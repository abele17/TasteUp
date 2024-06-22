require "open-uri"
require "nokogiri"

class ScrapMarmiton
  def initialize(url)
    @url = url
  end

  def call
    html_file = URI.open(@url).read
    html_doc = Nokogiri::HTML.parse(html_file)

    # Extracting the title
    title = html_doc.search(".main-title h1").text.strip

    # Extracting the image name
    # binding.pry
    image_name = html_doc.search("#recipe-media-viewer-main-picture").first&.attr('data-src')
    # image_data_srcset = html_doc.search(".recipe-media-viewer-thumbnail-container img").first&.dig('data-srcset')
    # srcset_urls = image_data_srcset&.split(',')&.map(&:strip)
    # image_name = srcset_urls
    #                  &.select { |url| url.include?('w314h314') }
    #                  &.first
    #                  &.split(' ')&.first

    # Extracting the category name
    category_name = html_doc.search("#af-bread-crumb a")[2]&.text&.strip&.capitalize

    # Extracting the difficulty
    difficulty = html_doc.search(".recipe-primary__item i.icon-difficulty + span").text.capitalize

    # Extracting the cooking time
    cooking_div = html_doc.search(".time__details div").find do |div|
      div.text.include?("Cuisson :")
    end

    # cooking_time_text = cooking_div.at('div').text.strip if cooking_div
    # cooking_time = cooking_time_text.match(/\d+/)[0]

    if cooking_div
      cooking_time_text = cooking_div.at('div').text.strip
      cooking_time = cooking_time_text.match(/\d+/)[0].to_i
      cooking_time *= 60 if cooking_time_text.include?("h")
    end

    # Extracting the preparation time
    # preparation_div = html_doc.search(".time__details div").find do |div|
    #   div.text.include?("Préparation :")
    # end
    # preparation_time_text = preparation_div.at('div').text.strip if preparation_div
    # preparation_time = preparation_time_text.match(/\d+/)[0]

    preparation_div = html_doc.search(".time__details div").find do |div|
      div.text.include?("Préparation :")
    end

    if preparation_div
      preparation_time_text = preparation_div.at('div').text.strip
      preparation_time = preparation_time_text.match(/\d+/)[0].to_i
      preparation_time *= 60 if preparation_time_text.include?("h")
    end

    # Extracting the number of servings
    number_of_servings = html_doc.at(".mrtn-recette_ingredients-counter").attribute_nodes.second.value
    puts number_of_servings

    # Extracting the preparation steps
    steps = html_doc.search(".recipe-step-list__container > p").map do |element|
      element.text.strip
    end

    # Extracting the ingredients
    ingredients = html_doc.search(".mrtn-recette_ingredients-items .ingredient-name").map do |element|
      element.text.strip
    end

    # Extracting quantity values
    quantity_values = html_doc.search(".mrtn-recette_ingredients-items .count").map do |element|
      element.text.strip
    end

    # Extracting quantity units
    quantity_units = html_doc.search(".mrtn-recette_ingredients-items .unit").map do |element|
      element.text.strip
    end

    # Building the desired format

    steps_hashes = steps.map.with_index do |step, index|
      { step_number: index + 1, instruction: step }
    end

    ingredients_hashes = ingredients.map.with_index do |ingredient, index|
      {
        name: ingredient,
        quantity_value: quantity_values[index].to_i,
        quantity_unit: quantity_units[index]
      }
    end

    {
      title: title,
      image_name: image_name,
      category_name: category_name,
      difficulty: difficulty,
      cooking_time: cooking_time,
      preparation_time: preparation_time,
      number_of_servings: number_of_servings,
      ingredients: ingredients_hashes,
      steps: steps_hashes,
    }
  end
end
