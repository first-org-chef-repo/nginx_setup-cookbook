# InSpec test for recipe nginx_setup::install-nginx

# The InSpec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec/resources/

describe http('http://server') do
  its('status') { should cmp 200 }
  its('body') { should include 'Welcome' }
end

# http('url', auth: {user: 'user', pass: 'test'}, params: {params}, method: 'GET POST PUT DELETE PATCH', headers: {headers}, data: data, open_timeout: 60, read_timeout: 60, ssl_verify: true, max_redirects: 3)
