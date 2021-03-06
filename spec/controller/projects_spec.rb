#https://relishapp.com/rspec/rspec-rails/docs/controller-specs


#creating a functional test for projects controller

require "rails_helper"

RSpec.describe ProjectsController, type: :controller do

  #factory bot user
  login_user

  #updated to assume we are logged in first
  #this just creates a valid project
  let(:project) { 
    { :title => "Test Title!", :description => "This is a test description"}
  }

  let(:valid_session) { {} }

  it "Creates a new project and returns successfull link" do

    Project.create! project
    get :index, params: {}, session: valid_session

    expect(response).to be_success #be_successful expects a HTP Status code of 200
  end

  
  context "GET #index" do

    #expects that using the get method will return a response
    it "returns a success response" do

     #http method: get/#index
      get :index
      puts response.body.inspect

      #THIS IS FOR RAILS younger
      #expects repsonse to be status code success/true/200
      # expect(response.success).to eq(true)
      expect(response).to be_success
    end
  end

  #context "GET #show" do
   # let!(:project) { Project.create(title: "Test title", description: "Test description") }

    ##expects to get a response and that the project is create
    #it "returns a success response" do

     # #http method: get/#index/#id
      #get :show, params: { id: project }

     # #expect the response to be true (from get method and project being created)
      #expect(response).to be_success

      ##RAILS 6.0
      ##this get should render the 'projects/all projects' page
      ##expect(response).to render_template("projects/show")
    #end
  #end

end
