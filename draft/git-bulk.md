

Research on API
https://developer.github.com/v3/projects/#list-user-projects
https://stackoverflow.com/questions/1955505/parsing-json-with-unix-tools
curl -s 'http://twitter.com/users/username.json' | python -mjson.tool | grep my_key

https://api.github.com/repos/octokit/octokit.rb
https://api.github.com/users/pdemanget/repos

Basic authentication

curl -u "username" https://api.github.com

OAuth2 token (sent in a header)

curl -H "Authorization: token OAUTH-TOKEN" https://api.github.com

https://developer.github.com/v3/repos/keys/#add-a-new-deploy-key



Bitbucket app password (read access)
=
https://confluence.atlassian.com/bitbucket/oauth-on-bitbucket-cloud-238027431.html

Key     nYBasDYNvSYu6bZ3nw
Secret  nxpZwD6QCjkzVPRyvWCD3N8hMRSfLAQn

https://bitbucket.org/site/oauth2/authorize
https://bitbucket.org/site/oauth2/access_token

curl -X POST -u "nYBasDYNvSYu6bZ3nw:nxpZwD6QCjkzVPRyvWCD3N8hMRSfLAQn" \
  https://bitbucket.org/site/oauth2/access_token \
  -d grant_type=authorization_code -d code={code}

tentive N° 15
-----------
https://bitbucket.org/site/oauth2/authorize?client_id=nYBasDYNvSYu6bZ3nw&response_type=code

curl -X POST -u "nYBasDYNvSYu6bZ3nw:nxpZwD6QCjkzVPRyvWCD3N8hMRSfLAQn" \
  https://bitbucket.org/site/oauth2/access_token \
  -d grant_type=authorization_code -d code=1413

tentive N° 16
-----------


https://bitbucket.org/site/oauth2/authorize?client_id=nYBasDYNvSYu6bZ3nw&response_type=token

https://confluence.atlassian.com/bitbucket/oauth-on-bitbucket-cloud-238027431.html
