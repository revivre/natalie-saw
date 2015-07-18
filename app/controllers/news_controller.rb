class NewsController < ApplicationController
  require 'nokogiri'
  require 'open-uri'

  def index
  	uri = 'http://natalie.mu/music/news/list/artist_id/'

		artist_id_list = {
		  # "i-dep" => 1156,
		  # "アイドリング!!!" => 1358,
		  # "赤い公園" => 9739,
		  # "advantage Lucy" => 847,
		  # "avengers in sci-fi" => 1216,
		  # "amazarashi" => 8381,
		  # "andymori" => 5031,
		  # "ART-SCHOOL" => 1,
		  # "五十嵐隆" => 1565,
		  # "いしわたり淳治"=> 8536,
		  # "INO hidefumi" => 1467,
		  # "iLL" => 848,
		  # "eastern youth" => 21,
		  # "Vampillia" => 10911,
		  # "EGO-WRAPPIN'" => 33,
		  # "遠藤舞" => 10907,
		  "OGRE YOU ASSHOLE" => 979,
		  # "おおはた雄一" => 43,
		  # "岡村靖幸" => 1017,
		  # "OKAMOTO'S" => 7767,
		  # 小沢健二" => 796,
	 	  "星野源" => 9623
		}

		@artist_info = {}
		

		artist_id_list.each do |artist_name, artist_id|
			@news_info = {}
		  html = Nokogiri.parse(open(uri + artist_id.to_s).read)
		  # @news_title = html.xpath('//p[@class="news-title"]').xpath('.//a')
		  title_list = html.search('//*[@id="NA_main"]/article/div/ul/ul/li/a/dl/dt').children
		  link_list  = html.search('//*[@id="NA_main"]/article/div/ul/ul/li/a/@href')
		  update     = html.search('//*[@id="NA_main"]/article/div/ul/ul/li/a/dl/dd/time')
		  link_num = (0..link_list.count).to_a
		  link_num.each do | i |
		  	@news_info.store(title_list[i], link_list[i])
		  end
		  @artist_info.store(artist_name, @news_info)
		end
	end
end

