class Book < ActiveFedora::Base
  has_metadata 'descMetadata', type: BookMetadata
  # within app/models/book.rb
  has_many :pages, :property=> :is_part_of

  delegate :title, to: 'descMetadata', unique: true
  delegate :author, to: 'descMetadata', unique: true
  delegate :publication_date, to: 'descMetadata', unique: true
  delegate :publisher, to: 'descMetadata', unique: true

end