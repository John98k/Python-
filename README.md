# Python-
自己瞎闹
class Soldier:
    def __init__(self,name):
        self.name = name                            #����
        self.gun = None
    def fire(self):
        if self.gun is None:                        #�ж�ʿ����û��ǹ
            print("[{}]��û��ǹ".format(self.name))
            return
        print("�尡{}".format(self.name))           #�ߺ��ں�
        self.gun.add_buttet(50)                     #��ǹװ���ӵ�
        self.gun.shoot()                            #��ǹ�����ӵ�
        print("����")
class Gun:
    def __init__(self,model):
        self.model = model                          #ǹ���ͺ�
        self.bullet_count = 0                       #�ӵ�����
    def add_buttet(self,count):
        self.bullet_count += count
    def shoot(self):
        if self.bullet_count <= 0:                  #�ж��Ƿ����ӵ�
            print("û���ӵ���...")
            return
        self.bullet_count -= 1
        print("{}{}[{}]".format(self.model,"�����ӵ�",self.bullet_count))
#����ǹ����
ak47 = Gun("AK47")
ak47.add_buttet(50)

ak47.shoot()
