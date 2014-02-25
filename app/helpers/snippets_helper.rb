module SnippetsHelper
  def coinbase_button snippet
    coinbase = Rails.configuration.coinbase

    money = snippet.price.to_money('BTC')
    custom = "#{current_user.id}-#{snippet.id}"
    button = coinbase.create_button snippet.title, money, snippet.description, custom

    button.embed_html.html_safe
  end
end
