require "rack_session_access/capybara"

Given /the following users exist/ do |user_table|
    user_table.hashes.each do |user|
        User.create(user)
    end
end
        
Given /I am not logged in/ do 
    page.driver.submit :delete, "/signout", {}
    page.should have_content("SIGN IN")
end

Given /I am logged in as an (.*) user/ do |user|
    UserList.create!(email: "exec@exec.com", role:"executive")
    User.create!(uid: "102175608470407824779", email: "exec@exec.com")
    page.set_rack_session(user_id: "102175608470407824779")
end

Then /I should (not )?see (.*) progress/ do |no, committee|
    @cmt = Committee.find_by_name(committee)
    if no
        page.should_not have_content("progress")
    else 
        page.should have_content("progress")
    end
end