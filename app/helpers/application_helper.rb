module ApplicationHelper
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
  #   nav_link "Home", root_path  # => '<li class="active">Home</li>'
  #
  #   # If the current page is not the root of the website:
  #   nav_link "Home", root_path  # => "<li>Home</li>"
  def nav_link(text, path)
    class_text = current_page?(path) ? "active" : ""
    content_tag(:li, :class => class_text) { link_to text, path }
  end
end
