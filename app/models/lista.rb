class Lista < ApplicationRecord
  validates_presence_of :titulo
  validates_uniqueness_of :titulo
  has_many :tarefas
end
