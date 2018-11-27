# Python66
class Soldier:
    def __init__(self,name):
        self.name = name                            #姓名
        self.gun = None
    def fire(self):
        if self.gun is None:                        #判断士兵有没有枪
            print("[{}]还没有枪".format(self.name))
            return
        print("冲啊{}".format(self.name))           #高喊口号
        self.gun.add_buttet(50)                     #让枪装填子弹
        self.gun.shoot()                            #让枪发射子弹
        print("开火")
class Gun:
    def __init__(self,model):
        self.model = model                          #枪的型号
        self.bullet_count = 0                       #子弹数量
    def add_buttet(self,count):
        self.bullet_count += count
    def shoot(self):
        if self.bullet_count <= 0:                  #判断是否还有子弹
            print("没有子弹了...")
            return
        self.bullet_count -= 1
        print("{}{}[{}]".format(self.model,"发射子弹",self.bullet_count))
#创建枪对象
ak47 = Gun("AK47")
ak47.add_buttet(50)

ak47.shoot()
