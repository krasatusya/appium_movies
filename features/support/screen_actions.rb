class ScreenActions
  # explicit wait
  def wait_for(timeout = 10, &block)
    wait = Selenium::WebDriver::Wait.new(:timeout => timeout)
    wait.until{yield} # yeild enters this code {available_contexts.include?("#{context}")}
  end

  #if there are no such an element it will scroll till the bottom and crash, use rescue to catch this
  def scroll_until text
    until find_element(:name,"#{text}").displayed? do
      execute_script('mobile: scroll', direction: 'down')# using native ui automaton api
    end
  end

  def is_on_correct_page (expected_page)
    elements = find_elements(:xpath, "//UIANavigationBar[@name = '#{expected_page}']")
    #puts "is_on_correct_page"
    #puts elements.size > 0
    elements.size > 0
  end

  def scroll_until_element element
    until element.displayed? do
      execute_script('mobile: scroll', direction: 'down')# using native ui automaton api
    end
  end

end