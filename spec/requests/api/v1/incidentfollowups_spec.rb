require 'swagger_helper'

RSpec.describe 'api/v1/incidentfollowups', type: :request do
    path "/api/v1/incidentfollowups" do
        post "Create an Incidentfollowup" do
            tags "Incidentfollowups"
            consumes "application/json"
            parameter name: :incidentfollowups, in: :body, schema: {
                type: :object,
                properties: {
                    incident_id: { type: :integer},
                    status: { type: :string },
                    comment: { type: :text },
                    date: { type: :date_time }
                },
                required: ['incident_id', 'status', 'comment']
            }
            response "201", "incidentfollowup created" do
                let(:incidentfollowup) { { incident_id: 1, status: 'pending', comment: 'This happened', date: '12/02/2020' } }
                run_test!
            end
            response "422", "invalid request" do
                let(:incidentfollowup) { { incident_id: 1 } }
                run_test!
            end
        end
    end
    path '/incidentfollowups/{id}' do
        get 'Retrieves an incidentfollowup' do
            tags 'Incidentfollowups'
            produces 'application/json', 'application/xml'

            parameter name: :id, :in => :path, :type => :string
            response '200', 'Incident followups found' do
                schema type: :object,
                    properties: {
                        id: { type: :integer, },
                        incident_id: { type: :integer},
                        date_time: { type: :date_time },
                        comment: { type: :text },
                        status: { type: :string },
                        date: { type: :date_time }
                    },
                    required: ['id', 'incident_id', 'status', 'comment']

                let(:id) { Incidentfollowups.create(incident_id: 1, status: 'pending', comment: 'This happened', date: '12/02/2020' ).id}
                run_test!
            end
                response '404', 'incidentfollowup not found' do
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
