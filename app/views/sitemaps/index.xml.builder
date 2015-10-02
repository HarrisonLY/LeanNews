base_url = "http://#{request.host_with_port}"
xml.instruct! :xml, :version=>'1.0'
xml.tag! 'urlset', 'xmlns' => 'http://www.sitemaps.org/schemas/sitemap/0.9' do
  xml.url{
      xml.loc("https://www.leannews.com")
      xml.changefreq("weekly")
      xml.priority(1.0)
  }
  xml.url{
      xml.loc("https://www.leannews.com/about")
      xml.changefreq("weekly")
      xml.priority(0.9)
  }
  xml.url{
      xml.loc("https://www.leannews.com/contact")
      xml.changefreq("weekly")
      xml.priority(0.9)
  }
  xml.url{
      xml.loc("https://www.leannews.com/press")
      xml.changefreq("weekly")
      xml.priority(0.9)
  }
  xml.url{
      xml.loc("https://www.leannews.com/daily")
      xml.changefreq("daily")
      xml.priority(0.9)
  }
  xml.url{
      xml.loc("https://www.leannews.com/events")
      xml.changefreq("daily")
      xml.priority(0.9)
  }
  xml.url{
      xml.loc("https://www.leannews.com/blog")
      xml.changefreq("daily")
      xml.priority(0.9)
  }
  @dailies.each do |daily|
    xml.url {
      xml.loc("#{daily_url(daily)}")
      xml.lastmod daily.updated_at.strftime("%F")
      xml.changefreq("weekly")
      xml.priority(0.5)
    }
  end
  @events.each do |event|
    xml.url {
      xml.loc("https://www.leannews.com/events")
      xml.lastmod event.updated_at.strftime("%F")
      xml.changefreq("weekly")
      xml.priority(0.5)
    }
  end
  @blogs.each do |blog|
    xml.url {
      xml.loc("#{blog_url(blog)}")
      xml.lastmod blog.updated_at.strftime("%F")
      xml.changefreq("weekly")
      xml.priority(0.5)
    }
  end
end