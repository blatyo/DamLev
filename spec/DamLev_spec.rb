require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe DamLev do
  describe ".distance" do
    it "should calculate a distance of zero between the same string" do
      DamLev.distance("DamLev", "DamLev").should == 0
    end
    
    it "should calculate a distance of one when a character has been deleted between two strings" do
      DamLev.distance("DamLev", "Damev").should == 1
    end
    
    it "should calculate a distance of one when a character has been inserted between two strings" do
      DamLev.distance("DamLev", "DamLiev").should == 1
    end
    
    it "should calculate a distance of one when a character has been substituted between two strings" do
      DamLev.distance("DamLev", "Dam7ev").should == 1
    end
    
    it "should calculate a distance of two when two characters have been swapped between two strings" do
      DamLev.distance("DamLev", "DameLv").should == 2
    end
    
    it "should calculate a distance equal to the longest string if the other is empty" do
      DamLev.distance("DamLev", "").should == "DamLev".length
    end
  end
end
