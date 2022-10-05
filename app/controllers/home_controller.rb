class HomeController < ApplicationController
  def calendar
  end

  def create
    resp = HTTParty.post("https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=#{ENV['API_KEY']}",
    :body => {
      email: user_params['email'],
      password: user_params['password'],
      returnSecureToken: true
    }.to_json,
    :headers => {'Content-Type' => 'application/json'}    
    )

    if resp.key?("idToken")
      render json: {message: "Successfully logged in!", token: resp['idToken'], localId: resp['localId']}
    else
      render json: {message: "Error logging in!", error: resp["error"]}
    end
  end

  def self.create_user(email, password)
    resp = HTTParty.post("https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=#{ENV['API_KEY']}",
    :body => {
      email: email,
      password: password
      }.to_json,
    :headers => {'Content-Type' => 'application/json'}
    )

    if resp.key?('idToken')
      User.create(email: resp["email"], uid: resp["localId"])
      return {message: 'Success', token: resp['idToken']}
    else
      return {message: resp["error"]["errors"][0]}
    end
  end


end
