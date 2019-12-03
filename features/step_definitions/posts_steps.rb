# This is the steps file referred to posts feature
# Place your code relative to that feature here

#index steps
Dado("que existam {int} posts criados") do |number_of_posts|
  number_of_posts.times do |i|
    Post.create(title: "Post #{i}", description: "Esse é o post #{i} post #{i} post #{i} post #{i} post #{i} post #{i} post #{i}")
  end
end

Dado("que eu esteja na página inicial") do
  visit root_path
end

Quando("eu clicar no link para {string}") do |link_name|
  click_link link_name
end

Entao("eu devo ver a lista de postagens com {int} itens") do |number_of_posts|
  number_of_posts.times do |i|
    expect(page).to have_content "POST #{i}"
  end
end

#create steps

#show steps

#edit steps

#destroy steps
