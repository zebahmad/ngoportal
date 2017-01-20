require 'elasticsearch/model'

class Requirement < ApplicationRecord
	include Elasticsearch::Model
  	include Elasticsearch::Model::Callbacks

	belongs_to :student
	belongs_to :user
	has_one :sponsorship_d

	attr_accessor :full_name
	validates :rtype, presence: true
	validates :cost, presence: true
	validates :description, presence: true

	def self.search_by_description(query)
  	__elasticsearch__.search(
    {
      query: {
        multi_match: {
          query: query,
          fields: ['description']
        }
      }
    }
  )
  end

  settings index: { number_of_shards: 1 } do
  mappings dynamic: 'false' do
    indexes :description, analyzer: 'english'
  end
  end
end



# Delete the previous articles index in Elasticsearch
Requirement.__elasticsearch__.client.indices.delete index: Requirement.index_name rescue nil

# Create the new index with the new mapping
Requirement.__elasticsearch__.client.indices.create \
  index: Requirement.index_name,
  body: { settings: Requirement.settings.to_hash, mappings: Requirement.mappings.to_hash }

# Index all article records from the DB to Elasticsearch
Requirement.import
