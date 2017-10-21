Then /^I should be redirected to (.*)/ do |page_name|
    current_path = URI.parse(current_url).to_s
    if current_path.respond_to? :should
        current_path.should == path_to(page_name)
    else
        assert_equal path_to(page_name), current_path
    end
end

