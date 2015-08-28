class Book < Volt::Model
    belongs_to :author
    field :title
    field :coauthor
    field :edited
    field :read
end
