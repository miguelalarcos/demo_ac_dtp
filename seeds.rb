['Dennet', 'Dawkins', 'Darwin'].each do |surname|
  Volt.current_app.store._authors << Author.new({:surname => surname})
end

Volt.current_app.store._authors.where({:surname => 'Dawkins'}).first.then do |author|
  edited = Time.new 1978, 1, 1
  read = Time.now
  book = Book.new({:title => 'The selfish gen.', :author => author, :coauthor => 'Darwin', :edited => edited, :read => read })
  Volt.current_app.store._books << book
end