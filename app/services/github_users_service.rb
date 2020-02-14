class GithubUsersService
    def self.import_all
        res = HTTParty.get("https://api.github.com/users?since=1")
        res.parsed_response
    end
end