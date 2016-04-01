# encoding: UTF-8
# Autora: Minim

require_relative 'monster.rb'
require_relative 'treasure_kind.rb'
require_relative 'prize.rb'
require_relative 'bad_consequence.rb'
require_relative 'treasure.rb'

module NapakalakiGame

class Cards
  @@max = BadConsequence.MAXTREASURES
  def self.newMonsters
    @@monstruos = Array.new
    #3 byakhees de bonanza
    bc = BadConsequence.newLevelSpecificTreasures("Pierdes tu armadura visible"+ 
    "y otra oculta", 0,[TreasureKind::ARMOR], [TreasureKind::ARMOR])
    p = Prize.new(2,1)
    @@monstruos << Monster.new("3 byakhees de bonanza", 8, bc, p)
    
    #Chibithulhu
    bc = BadConsequence.newLevelSpecificTreasures("Embobados con el lindo" +
    " primigenio te descartas de tu casco visible",0,[TreasureKind::HELMET], 
    Array.new)
    p = Prize.new(1,1)
    @@monstruos << Monster.new("Chibithulhu", 2, bc, p)
    
    #El sopor de Dunwich
    bc = BadConsequence.newLevelSpecificTreasures("El primordial bostezo " + 
    "contagioso. Pierdes el calzado visible.", 0,[TreasureKind::SHOES], 
    Array.new)
    p = Prize.new(1,1)
    @@monstruos << Monster.new("El sopor de Dunwich", 2, bc, p)
    
    #Angeles de la noche ibicenca
    bc = BadConsequence.newLevelSpecificTreasures("Te atrapan para llevarte " +
    "de fiesta y te dejan caer en mitad del vuelo. Descarte 1 mano visible y" +
    " 1 mano oculta.",0,[TreasureKind::ONEHAND], [TreasureKind::ONEHAND])
    p = Prize.new(4,1)
    @@monstruos << Monster.new("Angeles de la noche ibicenca", 14, bc, p)
    
    #El gorron en el umbral
    bc = BadConsequence.newLevelNumberOfTreasures("Pierdes todos tus tesoros"+ 
    "visibles", 0, @@max,0)
    p = Prize.new(3,1)
    @@monstruos << Monster.new("El gorron en el umbral", 10, bc, p)
    
    #HP Munchcraft
    bc = BadConsequence.newLevelSpecificTreasures("Pierdes la armadura visible",
    0,[TreasureKind::ARMOR], Array.new)
    p = Prize.new(2,1)
    @@monstruos << Monster.new("HP Munchcraft", 6, bc, p)
    
    #Bichgooth
    bc = BadConsequence.newLevelSpecificTreasures("Sientes bichos bajo la ropa."+ 
    "Descarta la armadura visible.",0, [TreasureKind::ARMOR], Array.new)
    p = Prize.new(1,1)
    @@monstruos << Monster.new("Bichgooth", 2, bc, p)
    
    #El rey de rosa
    bc = BadConsequence.newLevelNumberOfTreasures("Pierdes 5 niveles y "+
    "3 tesoros visibles",5,3,0)
    p = Prize.new(4,2)
    @@monstruos << Monster.new("El rey de rosa", 13, bc, p)
   
    #La que redacta en las tinieblas
    bc = BadConsequence.newLevelNumberOfTreasures("Toses los pulmones y " + 
    "pierdes dos niveles",2,0,0)
    p = Prize.new(1,1)
    @@monstruos << Monster.new("La que redacta en las tinieblas", 2, bc, p)
    
    #Los hondos
    bc = BadConsequence.newDeath("Estos monstruos resultan bastante superficiales " +
    "aburren mortalmente. Estas muerto.")
    p = Prize.new(2,1)
    @@monstruos << Monster.new("Los hondos", 8, bc, p)
    
    #Semillas Cthulhu
    bc = BadConsequence.newLevelNumberOfTreasures("Pierdes 2 niveles y " + 
    "2 tesoros ocultos",2,0,2)
    p = Prize.new(2,1)
    @@monstruos << Monster.new("Semillas Cthulhu", 4, bc, p)
    
    #Dameargo
    bc = BadConsequence.newLevelSpecificTreasures("Te intentas escaquear." +
    "Pierdes una mano visible",0,[TreasureKind::ONEHAND], Array.new)
    p = Prize.new(2,1)
    @@monstruos << Monster.new("Dameargo", 1, bc, p)
    
    #Pollipolipo volante
    bc = BadConsequence.newLevelNumberOfTreasures("Da mucho asquito. Pierdes"+ 
    " 3 niveles", 3, 0,0)
    p = Prize.new(1,1)
    @@monstruos << Monster.new("Pollipolipo volante", 3, bc, p)
    
    #Yskhtihyssg-Goth
    bc = BadConsequence.newDeath("No le hace gracia que pronuncien mal su " +
    "nombre. Estas muerto.")
    p = Prize.new(3,1)
    @@monstruos << Monster.new("Yskhtihyssg-Goth", 12, bc, p)
    
    #Familia feliz
    bc = BadConsequence.newDeath("La familia te atrapa. Estás muerto.")
    p = Prize.new(4,1)
    @@monstruos << Monster.new("Familia feliz", 1, bc, p)
    
    #Roboggoth
    bc = BadConsequence.newLevelSpecificTreasures("La quinta directiva " + 
    "primaria te obliga a perder 2 niveles y un tesoro 2 manos visible.", 2,
    [TreasureKind::BOTHHANDS], Array.new)
    p = Prize.new(2,1)
    @@monstruos << Monster.new("Roboggoth", 8, bc, p)
    
    #El espia
    bc = BadConsequence.newLevelSpecificTreasures("Te asusta en la noche. " +
    "Pierdes un casco visible.", 0,[TreasureKind::HELMET], Array.new)
    p = Prize.new(1,1)
    @@monstruos << Monster.new("El espia", 5, bc, p)
    
    #El lenguas
    bc = BadConsequence.newLevelNumberOfTreasures("Menudo susto te llevas."+
    " Pierdes 2 niveles y 5 tesoros visibles.",2,5,0)
    p = Prize.new(1,1)
    @@monstruos << Monster.new("El lenguas", 20, bc, p)
    
    #Bicefalo
    bc = BadConsequence.newLevelSpecificTreasures("Te faltan manos para tanta"+ 
    "cabeza. Pierdes 3 niveles y tus tesoros visibles de las manos", 3,
    [TreasureKind::ONEHAND,TreasureKind::ONEHAND,TreasureKind::BOTHHANDS],
    Array.new)
    p = Prize.new(1,1)
    @@monstruos << Monster.new("Bicefalo", 20, bc, p)
  end
  
  def self.monstruos
    @@monstruos
  end
  
  def self.newTreasures
    @@treasures = Array.new
    
    @@treasures << Treasures.new("¡Si,mi amo!",4, TreasureKind::HELMET)
    @@treasures << Treasures.new("Botas de investigacion",3, TreasureKind::SHOES)
    @@treasures << Treasures.new("Capucha de Cthulhu",3, TreasureKind::HELMET)
    @@treasures << Treasures.new("A prueba de babas",2, TreasureKind::ARMOR)
    @@treasures << Treasures.new("Botas de lluvia acida",1, TreasureKind::BOTHHANDS)
    @@treasures << Treasures.new("Casco minero",2, TreasureKind::HELMET)
    @@treasures << Treasures.new("Ametralladora Thompson",4, TreasureKind::BOTHHANDS)
    @@treasures << Treasures.new("Camiseta de la UGR",1, TreasureKind::ARMOR)
    @@treasures << Treasures.new("Clavo de rail ferroviario",3, TreasureKind::ONEHAND)
    @@treasures << Treasures.new("Cuchillo de sushi arcano",2, TreasureKind::ONEHAND)
    @@treasures << Treasures.new("Fez alopodo",3, TreasureKind::HELMET)
    @@treasures << Treasures.new("Hacha prehistorica",2, TreasureKind::ONEHAND)
    @@treasures << Treasures.new("El aparato del Pr. Tesla",4, TreasureKind::ARMOR)
    @@treasures << Treasures.new("Gaita",4, TreasureKind::BOTHHANDS)
    @@treasures << Treasures.new("Insecticida",2, TreasureKind::ONEHAND)
    @@treasures << Treasures.new("Escopeta de tres cañones",4, TreasureKind::BOTHHANDS)
    @@treasures << Treasures.new("Garabato mistico",2, TreasureKind::ONEHAND)
    @@treasures << Treasures.new("La rebeca metalica",3, TreasureKind::ARMOR)
    @@treasures << Treasures.new("Lanzallamas",4, TreasureKind::BOTHHANDS)
    @@treasures << Treasures.new("Necro-comicon",1, TreasureKind::ONEHAND)   
    @@treasures << Treasures.new("Necronomicon",5, TreasureKind::BOTHHANDS)
    @@treasures << Treasures.new("Linterna a dos manos",3, TreasureKind::BOTHHANDS)
    @@treasures << Treasures.new("Necro-gnomico",2, TreasureKind::ONEHAND)
    @@treasures << Treasures.new("Necrotelecom",2, TreasureKind::HELMET)
    @@treasures << Treasures.new("Mazo de los antiguos",3, TreasureKind::ONEHAND)
    @@treasures << Treasures.new("Necro-playboycon",3, TreasureKind::ONEHAND)
    @@treasures << Treasures.new("Porra preternatural",2, TreasureKind::ONEHAND)
    @@treasures << Treasures.new("Shogulador",1, TreasureKind::BOTHHANDS)
    @@treasures << Treasures.new("Varita de atizamiento",3, TreasureKind::ONEHAND)
    @@treasures << Treasures.new("Tentaculo de pega",2, TreasureKind::HELMET)
    @@treasures << Treasures.new("Zapato deja-amigos",1, TreasureKind::SHOES)
    
    
  end
  
  def self.treasures
    @@treasures
  end
  
end 
  
end
