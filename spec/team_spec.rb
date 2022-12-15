require "./lib/team"
require "./lib/player"

describe Team do 

  it "has a country" do
    team = Team.new("France")   
    expect(team.country).to eq("France")
  end

  it 'can be eliminated' do
    team = Team.new("France")   
    expect(team.eliminated?).to be(false)
    team.eliminated
    expect(team.eliminated?).to be(true)
  end

  it 'has players array and can add players' do
    team = Team.new("France")   
    expect(team.players).to eq([])
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    team.add_player(mbappe)
    team.add_player(pogba)
    expect(team.players).to eq([mbappe, pogba])
  end

  it 'can sort players by position' do
    team = Team.new("France")   
    mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
    team.add_player(mbappe)
    team.add_player(pogba)
    expect(team.players_by_position("midfielder")).to eq([mbappe])
    expect(team.players_by_position("defender")).to eq([])
  end

end