require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Ticketmaster::Provider::Github::Project" do

  before(:all) do
    @github =  TicketMaster.new(:Github, {:login => 'juanespinosa', :token => 'asdfghk'})
    @klass = TicketMaster::Provider::Github::Project
  end

  before(:each) do
    @project_name = "project_name"
    @project = Factory.build(:project)
    @projects = [@project]
    @github.stub!(:projects).and_return(@projects)
    @klass.stub!(:search).and_return(@projects)
    @klass.stub!(:find_by_id).and_return(@project)
  end
  
  it "should be able to load all projects" do
    @github.projects.should be_an_instance_of(Array)
    @github.projects.first.should be_an_instance_of(@klass)
  end
  
  it "should be able to find by name(id)" do
    p = @github.project(@project_name)
    p.should be_an_instance_of(@klass)
    p.name.should be_eql(@project_name)
  end
  
  it "should be able to find by name(id) with find method" do
    p = @github.project.find(@project_name)
    p.should be_an_instance_of(@klass)
    p.name.should be_eql(@project_name)
  end
  
  it "should be able to get projects with array of names" do
    p = @github.projects([@project_name])
    p.should be_an_instance_of(Array)
    p.first.should be_an_instance_of(@klass)
  end
end

