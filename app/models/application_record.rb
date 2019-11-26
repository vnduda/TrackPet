# frozen_string_literal: true

# Classe abstrata padrao herdada pelos modelos.
# Serve como ponto de entrada para funcionalidades extras.
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
