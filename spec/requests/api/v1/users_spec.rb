require 'swagger_helper'

RSpec.describe 'api/v1/users', type: :request do
    path "/api/v1/users" do
        post "Create a Users" do
            tags "Users"
            consumes "application/json"
            parameter name: :user, in: :body, schema: {
                type: :object,
                properties: {
                    email: { type: :string },
                    password: { type: :string },
                    password_confirmation: { type: :string },
                    role: { type: :string },
                    name: { type: :string }
                },
                required: ['email', 'password', 'password_confirmation', 'role', 'name']
            }
            response '201', 'User created' do
                let(:user) { { email: 'jude@gmail.com', password: 'Bunga', password_confirmation: 'Bunga', role: 'Admin', name: 'Jude Kajura' } }
                run_test!
            end
            response "422", "invalid request" do
                let(:user) { { email: 'jude@gmail.com' } }
                run_test!
            end
        end
    end
    path '/users/{id}' do
        get 'Retrieves an user' do
            tags 'Users'
            produces 'application/json', 'application/xml'

            parameter name: :id, :in => :path, :type => :string
            response '200', 'user found' do
                schema type: :object,
                    properties: {
                        id: { type: :integer, },
                        email: { type: :string },
                        password: { type: :string },
                        password_confirmation: { type: :string },
                        role: { type: :string },
                        name: { type: :string }
                    },
                    required: ['id', 'email', 'password', 'password_confirmation', 'role', 'name']

                let(:id) { User.create(email: 'jude@gmail.com', password: 'Bunga', password_confirmation: 'Bunga', role: 'Admin', name: 'Jude').id } 
                run_test!
            end
                response '404', 'user not found' do
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
