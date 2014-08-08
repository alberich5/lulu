class User < ActiveRecord::Base
	authenticates_with_sorcery!
	validates_confirmation_of :password, menssage: "Ambos campos deben coincidir", if: :password
end
