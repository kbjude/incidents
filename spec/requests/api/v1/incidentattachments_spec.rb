require 'swagger_helper'

RSpec.describe 'api/v1/incidentattachments', type: :request do
    path "/api/v1/incidentattachments" do
        post "Create an Incident attachments" do
            tags "Incidentattachments"
            consumes "application/json"
            parameter name: :incidentattachment, in: :body, schema: {
                type: :object,
                properties: {
                    incident_id: { type: :integer},
                    filepath: { type: :string},
                    name: { type: :string },
                },
                required: ['incident_id', 'filepath', 'name' ]
            }
            response "201", "Incidentattachment created" do
                let(:incidentattachment) { { incident_id: 1, filepath: "c:/hfhd/", name: 'Attack' } }
                run_test!
            end
            response "422", "invalid request" do
                let(:incidentattachments) { { filepath: "c:/hfhd/" } }
                run_test!
            end
        end
    end
    path '/incidents/{id}' do
        get 'Retrieves an Incidentattachment' do
            tags 'Incidentattachments'
            produces 'application/json', 'application/xml'

            parameter name: :id, :in => :path, :type => :string
            response '200', 'Incidentattachment found' do
                schema type: :object,
                    properties: {
                        id: { type: :integer, },
                        incident_id: { type: :integer},
                        filepath: { type: :string},
                        name: { type: :string },
                    },
                    required: ['id', 'incident_id', 'filepath', 'name']

                let(:id) { Incidentattachment.create(incident_id: 1, filepath: 'c:/path', name: 'firedbullets').id } 
                run_test!
            end
                response '404', 'Incidentattachment not found' do
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
