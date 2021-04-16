require 'swagger_helper'

RSpec.describe 'api/v1/incidents', type: :request do
    path "/api/v1/incidents" do
        post "Create an Incident" do
            tags "Incidents"
            consumes "application/json"
            parameter name: :incident, in: :body, schema: {
                type: :object,
                properties: {
                    incidentcategory_id: { type: :integer},
                    date_time: { type: :date_time },
                    longtitude: { type: :float},
                    latitude: { type: :float},
                    address: { type: :string },
                    description: { type: :text },
                    status: { type: :string },
                    offender: { type: :string }
                },
                required: ['incidentcategory_id', 'longtitude', 'latitude', 'date_time', 'offender', 'status']
            }
            response "201", "incident created" do
                let(:incident) { { incidentcategory_id: 1, date_time: '12/09/2020', longtitude: 22.3, latitude: 324.2, address: 'Bunga', description: 'They have', status: 'Pending', offender: 'Police' } }
                run_test!
            end
            response "422", "invalid request" do
                let(:incident) { { incidentcategory_id: 1 } }
                run_test!
            end
        end
    end
    path '/incidents/{id}' do
        get 'Retrieves an incident' do
            tags 'Incidents'
            produces 'application/json', 'application/xml'

            parameter name: :id, :in => :path, :type => :string
            response '200', 'incident found' do
                schema type: :object,
                    properties: {
                        id: { type: :integer, },
                        incidentcategory_id: { type: :integer},
                        date_time: { type: :date_time },
                        longtitude: { type: :float},
                        latitude: { type: :float},
                        address: { type: :string },
                        description: { type: :text },
                        status: { type: :string },
                        offender: { type: :string }
                    },
                    required: ['id', 'incidentcategory_id', 'date_time', 'longtitude', 'latitude', ]

                let(:id) { Incident.create(incidentcategory_id: 1, date_time: '12/09/2020', longtitude: 22.3, latitude: 324.2, address: 'Bunga', description: 'They have', status: 'Pending', offender: 'Police').id } 
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