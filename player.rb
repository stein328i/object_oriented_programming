class Player

  def initialize(name, gold_coins, health_points, lives)
    @name = name
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def collect_treasure
    @gold_coins += 1
      if @gold_coins % 10
        level_up
      end
  end

  def level_up
    @lives += 1
  end

  def do_battle(damage)
      @health_points = @health_points - damage
        if @health_points < 1
          @lives = @lives - 1
            if @lives == 0
             restart
           end
        end
    end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

end


fred = Player.new('fred', 1, 2, 3)
p fred.collect_treasure
p fred.do_battle(9)
p fred.restart
