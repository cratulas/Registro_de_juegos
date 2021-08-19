class Game < ApplicationRecord
    has_one_attached :pdf #Quizas many en ves de one
    has_one_attached :board_photo
    has_many_attached :pices_parts
    # has_one_attached :pieces
    validates :pdf, presence: true, blob: {content_type: ["application/pdf"], size_range: 0..5.megabytes}
    
    validates :board_photo, presence: true, blob: {content_type: ["image/jpeg", "image/png"], size_range: 0..5.megabytes}
    validates :pices_parts, presence: true, blob: {content_type: ["image/jpeg", "image/png"], size_range: 0..5.megabytes}


end
