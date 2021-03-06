=begin
Keepa API

The Keepa API offers numerous endpoints.  Every request requires your API access key as a parameter. You can find and change your key in the keepa portal. All requests must be issued as a HTTPS GET and accept gzip encoding. If possible, use a Keep-Alive connection.  Multiple requests can be made in parallel to increase throughput.

OpenAPI spec version: 1.0.0
Contact: info@keepa.com
Generated by: https://github.com/openapitools/openapi-generator.git

=end

class InitTables < ActiveRecord::Migration
  def change
    create_table "category".pluralize.to_sym, id: false do |t|
      t.integer :domain_id
      t.integer :cat_id
      t.string :name
      t.string :children
      t.integer :parent
      t.integer :highest_rank
      t.integer :product_count

      t.timestamps
    end

  end
end
