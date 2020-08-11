require "inaw/version"
require 'Nokogiri'
require 'open-uri'
require 'net/http'

module INAW
    @languages = {'AR' => 'kalimat-eashwayiya.php', 'DA' => 'tilfaeldige-ord.php', 'DE' => 'zufallige-worter.php', 'EN' => 'random-words.php', 'ES' => 'index.php',
                                'FI' => 'satunnaiset-sanat.php', 'FR' => 'mots-aleatoires.php',  'IT' => 'parole-casuali.php', 'NL' => 'willekeurige-woorden.php',
                                'PT' => 'palavras-aleatorias.php', 'SV' => 'slumpade-ord.php'}
    def self.word(lang)
        lang = lang.upcase
        if @languages.include? lang
            url = 'https://www.palabrasaleatorias.com/' + @languages[lang]
            uri = URI.parse(url)
            html = Net::HTTP.get_response(uri)
            response = Nokogiri::HTML(html.body)
            description = response.css("div")[1].text.strip
        else
            puts '[INAW] This language is not supported.'
        end
    end
end
