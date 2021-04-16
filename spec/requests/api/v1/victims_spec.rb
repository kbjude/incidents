require 'swagger_helper'

RSpec.describe 'api/v1/victims', type: :request do
    path "/api/v1/victims" do
        post "Create a Victim" do
            tags "Victims"
            consumes "application/json"
            parameter name: :victim, in: :body, schema: {
                type: :object,
                properties: {
                    incident_id: { type: :integer},
                    address: { type: :string },
                    comment: { type: :text },
                    contactc: { type: :string },
                    agegroup: { type: :string },
                    name: { type: :string }
                },
                required: ['incident_id', 'address'],
            }
            response "201", "Victim created" do
                let(:victim) { { incident_id: 1, address: 'Bunga', comment: 'They are', contactc: '0701042287' } }
                run_test!
            end
            response "422", "invalid request" do
                let(:victim) { { incident_id: 1 } }
                run_test!
            end
        end
    end
    path '/incidents/{id}' do
        get 'Retrieves an incident' do
            tags 'Victims'
            produces 'application/json', 'application/xml'

            parameter name: :id, :in => :path, :type => :string
            response '200', 'victim found' do
                schema type: :object,
                    properties: {
                        id: { type: :integer, },
                        incident_id: { type: :integer},
                        address: { type: :string },
                        comment: { type: :text },
                        contactc: { type: :string },
                        agegroup: { type: :string },
                        name: { type: :string }
                    },
                    required: ['id', 'incident_id', 'address']

                let(:id) { Victim.create(incident_id: 1, address: 'Bunga', comment: 'They are', contactc: '0701042287').id } 
                run_test!
            end
                response '404', 'victim not found' do
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
