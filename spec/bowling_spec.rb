require './bowling'

RSpec.describe Bowling, "@score" do
  # context "with no stikes or spares" do
  #     it "sum the pin count for each roll" do
  #       bowling = Bowling.new
  #       20.times {bowling.roll(4)}
  #       expect(bowling.score()).to eq 80
  #     end
  #   end

    # context "with one strike" do
    #   it "game with one strike" do
    #     bowling = Bowling.new
    #     bowling.roll(10)
    #     bowling.roll(2)
    #     bowling.roll(3)
    #     bowling.roll(4)
    #     expect(bowling.score()).to eq 24
    #   end
    # end

    context "with one spare" do
      it "game with one spare" do
        bowling = Bowling.new

        bowling.roll(5)
        bowling.roll(5)
        
        bowling.roll(10)
        
        bowling.roll(4)
        bowling.roll(4)
        
        bowling.roll(4)
        bowling.roll(4)
        
        bowling.roll(10)

        bowling.roll(4)
        bowling.roll(4)

        bowling.roll(10)

        bowling.roll(4)
        bowling.roll(4)

        bowling.roll(4)
        bowling.roll(4)

        bowling.roll(4)
        bowling.roll(4)

        expect(bowling.score()).to eq 122
      end
    end
end