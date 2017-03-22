class RpgController < ApplicationController
  def index
    if !session[:gold]
      session[:gold] = 0
    end
    if !session[:activities]
      session[:activities] = Array.new
    end
    @activities = session[:activities]
  end

  def farm
    gold = rand(10..20)
    time = Time.now.strftime("%Y/%m/%d %H:%M %p")
    activity = "Earned #{gold} golds from the farm! #{time}"
    process = "earned"
    process_gold(gold, activity, process)
  end

  def cave
    gold = rand(5..10)
    time = Time.now.strftime("%Y/%m/%d %H:%M %p")
    activity = "Earned #{gold} from the cave! #{time}"
    process = "earned"
    process_gold(gold, activity, process)
  end

  def house
    gold = rand(2..5)
    time = Time.now.strftime("%Y/%m/%d %H:%M %p")
    activity = "Earned #{gold} from the house! #{time}"
    process = "earned"
    process_gold(gold, activity, process)
  end

  def casino
    time = Time.now.strftime("%Y/%m/%d %H:%M %p")
    gold = rand(0..50)
    gamble = rand(0..1)
    if gamble == 0
      activity = "Earned #{gold} golds from the casino! #{time}"
      process = "earned"
    else
      activity = "Lost #{gold} golds from the casino... Ouch! #{time}"
      process = "lost"
      gold = gold * -1
    end
    process_gold(gold, activity, process)
  end

  def reset
    session.clear
    redirect_to "/"
  end

  private
    def process_gold (gold, activity, process)
      session[:gold] = session[:gold] + gold
      session[:activities].append([activity, process])
      redirect_to "/"
    end
end
