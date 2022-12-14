# example actor class for use in next example
class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I love you, baby."
  end

  def fall_off_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

# example movie class for use in next example
class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      puts actor.act
      puts actor.fall_off_ladder
      puts actor.light_on_fire
      actor.act
    end
  end
end

# example flow
# actor = Actor.new("Bradd Pitt")
# movie = Movie.new(actor)
# movie.start_shooting

RSpec.describe Movie do
  let(:stuntman) { double("Mr. Danger", ready?: true, act: "Any string", fall_off_ladder: "Sure, do it!", light_on_fire: false) }
  subject { described_class.new(stuntman) }

  describe '#start_shooting_method' do
    it 'expects an actor to do three actions' do
      # expect(stuntman).to receive(:ready?)
      # expect(stuntman).to receive(:act)
      # expect(stuntman).to receive(:fall_off_ladder)
      # expect(stuntman).to receive(:light_on_fire)
      # expect(stuntman).to recieve(:light_on_fire).once # this is the same as below - can't have both
      # expect(stuntman).to recieve(:light_on_fire).exactly(1).times # this is the same as above - can't have both
      expect(stuntman).to receive(:light_on_fire).at_most(1).times

      expect(stuntman).to receive(:act).twice # - these three the same - can only have one
      # expect(stuntman).to receive(:act).exactly(2).times # - these three the same - can only have one
      # expect(stuntman).to receive(:act).at_least(2).times # - these three the same - can only have one

      subject.start_shooting
    end
  end
end
