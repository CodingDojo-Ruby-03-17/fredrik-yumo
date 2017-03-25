require_relative 'project'
RSpec.describe Project do
  before(:each) do
    @project1 = Project.new('Project 1', 'description 1', 'owner 1')
    @project2 = Project.new('Project 2', 'description 2', 'owner 2')
  end
  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name"
    expect(@project1.name).to eq("Changed Name")
    @project2.name = "Changed Name"
    expect(@project2.name).to eq("Changed Name")
  end
  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
  end
  it 'has a getter and setter for owner attribute' do
    @project1.owner = "New Owner"
    expect(@project1.owner).to eq("New Owner")
    @project2.owner = "New Owner"
    expect(@project2.owner).to eq("New Owner")
  end
  it 'has a method tasks that returns the tasks attribute' do
    expect(@project1.tasks).to eq("[]")
    expect(@project2.tasks).to eq("[]")
  end
  it 'has a method add_tasks that pushes a task to the tasks attribute' do
    @project1.add_tasks("Code for at least one hour")
    expect(@project1.tasks).to eq("[\"Code for at least one hour\"]")
    @project2.add_tasks("Code for at least one hour")
    expect(@project2.tasks).to eq("[\"Code for at least one hour\"]")
  end
  it 'has a method print_tasks that prints each task in the tasks attribute' do
    @project1.add_tasks("Do homework")
    @project1.add_tasks("Get some sleep")
    expect(@project1.print_tasks).to eq(["Do homework", "Get some sleep"])
  end
end
