FactoryBot.define do
  factory :user do
    id { 1 }
<<<<<<< HEAD
       name { 'sample' }
       email { 'sample@example.com' }
       password { '00000000' }
       admin { false }
     end
     factory :second_user do
       id { 2 }
       name { 'second_sample' }
       email { 'second_sample@example.com' }
       password { '22222222' }
       admin { false }
     end
     factory :admin_user, class: User do
       id { 3 }
       name { 'admin' }
       email { 'admin@example.com' }
       password { '11111111' }
       admin { true }
     end
   end
=======
    name { 'sample' }
    email { 'sample@example.com' }
    password { '00000000' }
    admin { false }
  end
  factory :second_user do
    id { 2 }
    name { 'second_sample' }
    email { 'second_sample@example.com' }
    password { '22222222' }
    admin { false }
  end
  factory :admin_user, class: User do
    id { 3 }
    name { 'admin' }
    email { 'admin@example.com' }
    password { '11111111' }
    admin { true }
  end
end
>>>>>>> 3bbcd2869510d89227b1ebea83385ca5010afaae
