class Tarefa < ApplicationRecord
  belongs_to :lista

  default_scope { order(:updated_at => :desc)}
end
