module Nhl
  require 'nokogiri'
  require 'open-uri'
  require 'addressable/uri'
  
  def self.player_search(team_code)
    # Base URL of NHL.com
    url = "http://www.nhl.com/ice/playersearch.htm?team=#{team_code}"
    doc = Nokogiri::HTML(open(url))
    
    players = []
    
    doc.css('tbody tr').each do |row|
      columns = row.css('td')
      
      nhl_player_id = Addressable::URI.parse( columns[0].css('a').attribute('href').content ).query_values["id"].to_i
      players << {:nhl_player_id => nhl_player_id, :name => columns[0].text.strip[0..-5], :team => team_code, :dob => columns[2].text.strip, :pob => columns[3].text.strip}
    end
    
    return players  
  end
  
end