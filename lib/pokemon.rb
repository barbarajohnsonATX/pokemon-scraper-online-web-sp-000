	class Pokemon
	
	attr_accessor :id, :name, :type, :db, :hp
<<<<<<< HEAD
	@@all = []
=======
>>>>>>> 20c4b1169456ebe7b0c8574fc48cc5e30c6352ef
	
	  def initialize(name:, type:, id:, db:, hp: nil)
	    @name = name
	    @type = type
	    @id = id
	    @hp = hp
	    @db = db
<<<<<<< HEAD
	    @@all << self 
=======
>>>>>>> 20c4b1169456ebe7b0c8574fc48cc5e30c6352ef
	  end
	
	  def self.save(name, type, db)
	    db.execute("INSERT INTO pokemon(name, type) VALUES (?,?)", name, type)
	  end
	
	  def self.find(id_number, db)
<<<<<<< HEAD
	    pokemon_from_db = db.execute("SELECT * FROM pokemon WHERE id=?", id_number).first
	    Pokemon.new(id: pokemon_from_db[0], 
	              name: pokemon_from_db[1], 
	              type: pokemon_from_db[2], 
	              hp: pokemon_from_db[3], 
	              db: db )
=======
	    pokemon_find = db.execute("SELECT * FROM pokemon WHERE id=?", id_number).first
	    Pokemon.new(id: pokemon_find[0], name: pokemon_find[1], type: pokemon_find[2], hp: pokemon_find[3], db: db )
>>>>>>> 20c4b1169456ebe7b0c8574fc48cc5e30c6352ef
	  end
	
	  def alter_hp(new_hp, db)
	    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", new_hp, self.id)
	  end
	
	
	end