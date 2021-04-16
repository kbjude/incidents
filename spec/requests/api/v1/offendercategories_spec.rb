require 'swagger_helper'

RSpec.describe 'api/v1/offendercategories', type: :request do
    path "/api/v1/offendercategories" do
        post "Create an Offendercategories" do
            tags "Offendercategories"
            consumes "application/json"
            parameter name: :offendercategory, in: :body, schema: {
                type: :object,
                properties: {
                    name: { type: :string }
                },
                required: ['name']
            }
            response "201", "offendercategory created" do
                let(:offendercategory) { { name: 'Jude' } }
                run_test!
            end
            response "422", "invalid request" do
                let(:offendercategory) { { name: '' } }
                run_test!
            end
        end
    end
    path '/incidents/{id}' do
        get 'Retrieves an offender category' do
            tags 'Offendercategories'
            produces 'application/json', 'application/xml'

            parameter name: :id, :in => :path, :type => :string
            response '200', 'offendercategory found' do
                schema type: :object,
                    properties: {
                        id: { type: :integer, },
                        name: { type: :string }
                    },
                    required: ['id', 'name']

                let(:id) { Offendercategory.create(name: 'Joseph').id } 
                run_test!
            end
                response '404', 'offendercategory not found' do
                    let(:id) { 'invalid' }
                    run_test!
                end


                response '406', 'unsupported accept header' do
                    let(:'Accept') { 'application/1' }
                    run_test!
                end

        end
    end
end
