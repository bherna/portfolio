require "rails_helper"

#this is a simple equals to check (for int)

RSpec.describe "The math below is wrong..." do
	it "should equal 42 but we said 43" do
		expect(6*7).to eq(42)
	end
end

#this is a simple equals to check (for strings)

RSpec.describe "hello spec" do
	# ...
	describe String do
		let(:string) {String.new}
		it "should provide an empty string" do
			expect(string).to eq("")
		end
	end
end




