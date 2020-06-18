class User < ApplicationRecord
    validates: password, length: {maximum: 42}
    validates: name, presence: true
end
