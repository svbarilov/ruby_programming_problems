require 'rspec'

class Friendship
    
    # // This is for you to implement
 #    //
 #    // This method takes 2 String parameters and
 #    // makes them "friend" of each other.
 #    //
 #    // Note: The order of names does not matter
 #    // Note: Don't forget to write tests to have good test coverage for this method
 #    public void makeFriend(String name1, String name2) {
 #       validate_arguments([name1, name2])
 #       friendship_instance = [name1, name2]
 #       registered_friends << friendship_instance
 #    }
 #
 #    // This is for you to implement
 #    //
 #    // This method takes 2 String parameters and
 #    // makes them no longer friends of each other.
 #    //
 #    // Note: The order of names does not matter
 #    // Note: Don't forget to write tests to have good test coverage for this method
    def unmakeFriend(name1, name2) 
      validate_arguments([name1, name2])
      to_delete = [name1, name2]
      registered_friends.delete_if { |friendship| (friendship ==  to_delete) || (friendship ==  to_delete.reverse) } 
    end
    
    # // This is for you to implement
 #    //
 #    // This method takes a single argument (name) and
 #    // returns all the immediate "friends" of that name
 #    //
 #    // For example, A & B are friends, B & C are friends and C & D are friends.
 #    // getDirectFriends(B) would return A and C
 #    // getDirectFriends(D) would return C
 #    //
 #    // Note: It should not return duplicate names
 #    // Note: Don't forget to write tests to have good test coverage for this method
 
    def getDirectFriends(name) 
      validate_arguments([name])
      matched_friendships = []  
      registered_friends.each do |friendship_instance|
          (matched_friendships << friendship_instance) if (friendship_instance.include?(name))
      end
      friends_list = []
      matched_friendships.each { instance|  friends_list << instance.delete(name)}
      direct_friends = friends_list.uniq.flatten
      return direct_friends
         
    end
    
    # // This is for you to implement (Seniors and above)
 #    //
 #    // This method takes a single argument (name) and
 #    // returns all the indirect "friends" of that name
 #    //
 #    // For example, A & B are friends, B & C are friends and C & D are friends.
 #    // getInirectFriends(A) would return C and D
 #   //
 #    // Note: It should not return duplicate names
 #    // Note: Don't forget to write tests to have good test coverage for this method
 
    def getIndirectFriends(name)
      validate_arguments([name])
      direct_friends = self.getDirectFriends(name)
      indirect_firends = []  
      intermediate = direct_friends
     while true do 
        intermediate.each { |friend| current_iteration << self.getDirectFriends(friend)}
        break if current_iteration.all? { |friend| indirect_friends.include?(friend) }
        current_iteration.uniq.each { |friend|  indirect_firends << friend}
        indirect_firends.uniq!
        intermediate = current_iteration
        current_iteration = [] 
     end
       return  indirect_firends
    end


def show_friends
  registered_friends
end
  
  private
  
  def validate_arguments(*args)
    args.each { |arg| raise WrongArgumentDataTypeError unless arg.is_a?(String) }
  end
  
  
end # end Friendship class






describe Friendship do 
  
  let(:friendship) {Friendship.new}
  let(:actual_friends) {actual =  friendship.show_friends.sort}
  
  def create_default_friends
    friend1 = "A"
    friend2 = "B"
    friendship.makeFriend(friend1, friend2)
  end  
  
  it "should make friends" do
    create_default_friends
    expected = [friend1, friend2].sort
    expect(actual_friends).to include(expected)
  end
  
  
  it "should unmake friends" do
     create_default_friends
     friendship.unmakeFriend(friend1, friend2)
     expect(actual_friends).to be_empty
  end
  
    
   it "should show direct friends" do
     create_default_friends
     friendship.makeFriend("A", "C")
     friendship.makeFriend("A", "D")
     direct_friends = friendship.getDirectFriends("A").sort
     friends = ["B", "C", "D"]
     expected_friends = friends.sort
     expect(direct_friends).to eql(expected_friends)
  end  
  
    
  it "should show indirect friends" do
     create_default_friends
     friendship.makeFriend("B", "C")
     friendship.makeFriend("C", "D")
     direct_friends = friendship.getinDirectFriends("A").sort
     expected_friends = ["C", "D"].sort
     expect(direct_friends).to eql(expected_friends)
  end 
  
end #end describe





class Friends
  
  
def initialize
  @friends={}
end
  
  
def make_friend(fr1,fr2)
    if @friends.has_key? fr1
        @friends[fr1]= @friends[fr1]+fr2 unless @friends[fr1].include? fr2
        else
        @friends[fr1] = fr2
    end
    
    if @friends.has_key? fr2
        @friends[fr2]= @friends[fr2]+fr1 unless @friends[bb].include? fr1
        
        else
        @friends[fr2] = fr1
    end
end


def unfriend(fr1,fr2)
    @friends[fr1].gsub!(fr2,'') if @friends[fr1].include? fr2
    @friends[fr2].gsub!(fr1,'') if @friends[fr2].include? fr1
end


def direct_friends(friend)
    puts @friends[friend]
end


def indirect_friends(friend)
    i=0
end


end # end friends class
