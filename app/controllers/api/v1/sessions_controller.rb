# frozen_string_literal: true
require 'net/http'
require 'digest'
require 'json'
module Api
  module V1
    class SessionsController < ApplicationController
      include ApplicationHelper
      # before_action :configure_sign_in_params, only: [:create]
      #skip_before_action :authenticate_user!
      skip_before_action :verify_authenticity_token, only: %i[create signup otp otplogin]

      # GET /resource/sign_in
      # def new
      #   super
      # end

      # POST /resource/sign_in
      def create
        user = User.find_by(email: auth_params[:email])
        if user.valid_password?(auth_params[:password])
          jwt = Auth.issue(user: user.id)
          user.phone = '' unless user.phone
          render json: { jwt: jwt, name: user.full_name, phone: user.phone, category: user.category, id: user.id }
        else
          render json: auth_params, status: 400
        end
      end

      def signup
        user = User.new
        user.email = params[:email]
        user.password = params[:password]
        user.name = params[:name]
        user.phone = params[:phone]

        if user.save
          h = { message: 'An email has been sent to you with instructions on how to confirm your account', user: user }
        else
          h = { errors: user.errors, status: :unprocessable_entity }
        end
        render json: h, status: 400
      end

      def otp
        code = rand(10000..99999)
        phone = "256" + params[:phone][-9,9] 
        user = User.find_by_phone(phone)
        
        if !user
          email = phone + "@wsruganda.org"
          user = User.create(email: email, name: email, phone: phone, password: code.to_s + "AZSDX", role: "user")
        end

        otp = Otp.create(user_id: user.id, code: code)
        message = 'Your Password is ' + code.to_s
        resp = send_sms_tiv([phone], message, 'WSR')
        h = code
        render json: h, status: 200
      end

      def otplogin 
        phone = "256" + params[:phone][-9,9]
        user = User.find_by(phone: phone)
        if user && Otp.where(user_id: user.id, code: params[:code]).first
          jwt = Auth.issue(user: user.id)
          user.phone = '' unless user.phone
          render json: { jwt: jwt, name: user.full_name, phone: user.phone, category: user.category, id: user.id }
        else
          render json: auth_params, status: 400
        end
      end

      # DELETE /resource/sign_out
      # def destroy
      #   super
      # end

      # protected
      private

      def auth_params
        params
      end
    end
  end
end
