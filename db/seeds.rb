# Seeds for user using Github API and octogit


# Destroy all users from users table
User.destroy_all
# Create a github client
client = Octokit::Client.new(login: "cantoine85", password: "***" )

# Access the account of my followers through their login
client.followers.map do |f|
  # Get name of follower through its login
  name = client.user(f.login).name
  # Create github email of follower from its login
  email = f.login + '@github.com'
  # Create password with at least 8 characters to make it valid (cf. devise)
  password = 'azertyui'
  #
  avatar = f.avatar_url

  # Create user in users table
  User.create(
    first_name: name,
    email: email,
    password: password,
    avatar: avatar)
end
