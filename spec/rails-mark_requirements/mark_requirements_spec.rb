require 'spec_helper'

describe Model do
  context 'class method' do
    it 'should mark name as required' do
      Model.mark_required?(:name).should be_true
    end
    it 'should not mark color as required' do
      Model.mark_required?(:color).should_not be_true
    end
  end
  context 'instance method' do
    before do
      @model = Model.create(:name => 'Bob', :color => 'green')
    end
    it 'should mark name as required' do
      @model.mark_required?(:name).should be_true
    end
    it 'should not mark color as required' do
      @model.mark_required?(:color).should_not be_true
    end
  end
end
