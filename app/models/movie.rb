class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        self.create title: title
    end
    
    #returns the first item in the table
    def self.first_movie
        self.first 
    end

    #returns the last item in the table
    def self.last_movie
        self.last 
    end
    # return number of records in movies
    def self.movie_count
        self.count
    end
    #returns movie with corresponding id
    def self.find_movie_with_id(id)
        self.find_by(id:id)
    end
    # find movies with certain attributes
    def self.find_movie_with_attributes(attributes)   
        self.where(attributes).first
    end

    #find all movies after 2002
    def self.find_movies_after_2002
        self.where("release_date > '2002'")
    end

    #can update titles of all movies
    def self.update_all_titles(title)
        self.update(title:title)
    end

    #update_all_titles
    def update_with_attributes(attributes)
        self.update(attributes)
    end

    def self.delete_by_id(id)
        self.find_movie_with_attributes(id: id).destroy
    end

    def self.delete_all_movies
        self.destroy_all
    end        
end