require 'swagger_helper'

RSpec.describe 'api/v1/incidentcategories', type: :request do
    path "/api/v1/incidentcategories" do
        post "Create an Incident Categories" do
            tags "Incident Categories"
            consumes "application/json"
            parameter name: :incidentcategories, in: :body, schema: {
                type: :object,
                properties: {
                    name: { type: :string }
                },
                required: ['name']
            }
            response "201", "incident category" do
                let(:incidentcategory) { { name: 'Political Violence' } }
                run_test!
            end
            response "422", "invalid request" do
                let(:encounter) { { name: 'Attack' } }
                run_test!
            end
        end
    end
    path '/incidentcategories/{id}' do
        get 'Retrieves an Incident Category' do
            tags 'Incidentcategories'
            produces 'application/json', 'application/xml'

            parameter name: :id, :in => :path, :type => :string
            response '200', 'Incident Category found' do
                schema type: :object,
                    properties: {
                        id: { type: :integer, },
                        name: { type: :string }
                    },
                    required: [ 'id', 'name' ]

                let(:id) { Incidentcategory.create(name: 'Political Violence').id }
                run_test!
            end
                response '404', 'incident not found' do
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
