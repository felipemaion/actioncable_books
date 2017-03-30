class Livro < ApplicationRecord
    after_create_commit { LivroBroadcastJob.perform_later self }
end
