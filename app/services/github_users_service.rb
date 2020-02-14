class GithubUsersService
    def self.all_users
        res = HTTParty.get("https://api.github.com/users?since=1")
        res = res.parsed_response

        user_array = Array.new.tap do |array|
            res.each { |user| array << user.slice!("id", "node_id", "gravatar_id", "html_url", "following_url" , "gists_url", "starred_url", "organizations_url", "repos_url", "received_events_url", "site_admin", "type") }
        end
          
        user_array
    end
end