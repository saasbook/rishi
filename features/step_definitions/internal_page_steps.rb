

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
    visit '/auth/google_oauth2'
end

Then /I should (not )?see (.*) progress/ do |no, committee|
    puts current_url
    @cmt = Committee.find_by_name(committee)
    puts @cmt.id
    if no
        page.should_not have_content("progress")
    else 
        page.should have_content("progress")
    end
end