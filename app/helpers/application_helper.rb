module ApplicationHelper

  include Twitter::Autolink

	def active? path
     "active" if current_page? path
  end

  def twitter_feeds_page?
     "active" if current_page?(controller: '/jobs', action: 'on_twitter')
  end

   def url_parser string
   	regex = %r{
      \b
      (
        (?: [a-z][\w-]+:
         (?: /{1,3} | [a-z0-9%] ) |
          www\d{0,3}[.] |
          [a-z0-9.\-]+[.][a-z]{2,4}/
        )
        (?:
         [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
        )+
        (?:
          \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
          [^\s`!()\[\]{};:'".,<>?«»“”‘’]
        )
      )
    }ix

    string.gsub(regex) do |url|
      "<a href='#{url}' target='_blank'>#{url}</a>"
    end.html_safe
   end

  def alerts
    alert = (flash[:alert] || flash[:error] || flash[:notice])

    if alert
      alert_generator alert
    end
  end

  def alert_generator msg
    js add_gritter(msg, title: "JobFinder App", sticky: false)
  end

  def tweet_account_link(name, screen_name)
    "<a class='tweet_name' href=https://twitter.com/#{screen_name} target='>blank'> #{name} </a>".html_safe
  end

end