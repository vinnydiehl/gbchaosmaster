module ApplicationHelper
  # If there is a controller-specific stylesheet, return the link to that
  # stylesheet. Otherwise, return <tt>nil</tt>.
  def controller_specific_stylesheet
    name = controller.controller_name
    if Rails.application.assets.find_asset "#{name}.css"
      stylesheet_link_tag name, media: "all"
    end
  end

  # Generates a generic page title. Prepend +title+ with "gbchaosmaster" and a
  # pipe for separation. If +title+ is blank, simply return "gbchaosmaster".
  #
  #   page_title "Test Page"  # => "gbchaosmaster | Test Page"
  #   page_title nil          # => "gbchaosmaster"
  def page_title(title)
    "gbchaosmaster#{" | #{title}" unless title.blank?}"
  end

  # Generates a link for a navigation bar. It is an <tt>li</tt> element and
  # will have the <tt>active</tt> class if the current location is +path+.
  #
  #   # If the current page is the root of the website:
  #   nav_link "Home", root_path
  #     # => '<li class="active"><a href="/">Home</a></li>'
  #
  #   # If the current page is not the root of the website:
  #   nav_link "Home", root_path  # => '<li><a href="/">Home</a></li>'
  def nav_link(text, path)
    attrs = current_page?(path) ? { :class => "active" } : {}
    content_tag(:li, attrs) { link_to text, path }
  end
end
