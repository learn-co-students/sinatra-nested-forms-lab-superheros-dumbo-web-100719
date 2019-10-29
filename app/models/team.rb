class Team
   attr_reader :name, :motto
   
   @@teams = []

   def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
   end

   def self.all
    @@teams
   end
end