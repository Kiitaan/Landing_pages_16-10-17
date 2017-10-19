require 'pry'

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur (X, O, ou vide), ainsi que son numéro de case)
attr_accessor :valeur, :position

  def initialize
    #TO DO doit régler sa valeur, ainsi que son numéro de case
    @valeur = []
    @position = position
  end

  def valeur_game
@valeur << "O"
@valeur << "X"
@valeur << "nil"

  end

  def to_s
    #TO DO : doit renvoyer la valeur au format string
return "#{@valeur}.to_s"
end

end

class Board
  include Enumerable
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :caseA1, :caseA2, :caseA3, :caseB1, :caseB2, :caseB3, :caseC1, :caseC2, :caseC3
@@plateau = []
@@ligne1 = []
@@ligne2 = []
@@ligne3 = []

  def initialize
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe

@caseA1 = BoardCase.new("A1")
@caseA2 = Boardcase.new("A2")
@caseA3 = Boardcase.new("A3")
@caseB1 = Boardcase.new("B1")
@caseB2 = Boardcase.new("B2")
@caseB3 = Boardcase.new("B3")
@caseC1 = Boardcase.new("C1")
@caseC2 = Boardcase.new("C2")
@caseC3 = Boardcase.new("C3")

@@ligne1 << "@caseA1, @caseB1, @caseC1"
@@ligne2 << "@caseA2, @caseB2, @caseB3"
@@ligne3 << "@caseA3, @caseB3, @caseC3"
@@plateau << "@@ligne1, @@ligne2, @@ligne3"

  end

  def to_s
  #TO DO : afficher le plateau
puts "#{@@plateau}.to_s"

end

  def play
    #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)


  end

  def victory?
    #TO DO : qui gagne ?
  end

end

class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?

attr_accessor :nom, :symbole
attr_writer :score

  def initialize(nom, symbole)
    #TO DO : doit régler son nom, sa valeur, son état de victoire
@name = name
@symbol = symbole
@score = 0

  end
end

class Game

attr_accessor :players, :board

  def initialize(players, board)
    #TO DO : créé 2 joueurs, créé un board
@players = []
player1 = Player.new(Xavier, O)
player2 = Player.new(Olivier, O)
@players << player1
@players << player2
@board = []
plateau_jeu = Board.new
@board << plateau_jeu

  end

  def go
    # TO DO : lance la partie
  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
puts plateau_jeu.Board


  end

end

Game.new.go

binding.pry
