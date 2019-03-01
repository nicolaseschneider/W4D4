class Band < ApplicationRecord

    validates :name, presence: true

    has_many :albums,
        foreign_key: :band_name

    has_many :tracks,
        through: :albums,
        source: :tracks




end