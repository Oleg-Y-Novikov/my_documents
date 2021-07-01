 class HiMax   
    GOOD = proc { puts("I wrote the code well - you can rest") }.freeze
    
    POORLY = proc { puts("As the Inta gangsters say - 'Whoever beats whom, he will beat down' do not give up!") }
    
    STATE_MAP = {
        'good' => GOOD,
        'poorly' => POORLY
    }.freeze
    
    
    
    def self.call(state)
       new(state).call
    end
    
    def initialize(state)
      @state = state 
    end
    
    attr_reader :state
    
    def call
        hi_max
    end
    
    private
    
    def hi_max
       STATE_MAP[state].call if STATE_MAP[state]
    end
end

HiMax.new('poorly').call
