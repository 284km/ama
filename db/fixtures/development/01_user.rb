User.seed do |u|
  u.id        = 2
  u.github_id = 2
  u.email     = "test2@example.com"
  u.nickname  = "test2"
  u.admin     = true
end

(3..10).each do |n|
  User.seed do |u|
    u.id        = n
    u.github_id = n
    u.email     = "test#{n}@example.com"
    u.nickname  = "test#{n}"
    u.admin     = false
  end
end
