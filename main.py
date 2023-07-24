
import numpy as np
def print_hi(name):
    print(f'Hi, {name}')  # Press Ctrl+F8 to toggle the breakpoint.
class commands:
    def __init__(self):
        self.commands = []
        self.output = ''
        self.pos_type = 'abs'
        self.core_type = 0.2 #core is 0.2mm
        self.extrution_value = 0
        self.filament_diameter = 1.75 #1.75mm
        self.jump_size = 0
        self.ex_temp = 185
        self.bed_temp = 0
        self.number_of_extrudes = 0
    def add_manual(self, command):
        self.commands.append(command)

    def compile(self):
        self.output = "\n".join(self.commands)
    def set_end_code (self):
        self.add_manual("G91 ;Relative positioning\
                \nG1 E-2 F2700 ;Retract a bit\
                \nG1 E-2 Z0.2 F2400 ;Retract and raise Z\
                \nG1 X5 Y5 F3000 ;Wipe out\
                \nG1 Z10 ;Raise Z more\
                \nG90 ;Absolute positioning\
                \nG1 X0 Y235 ;Present print\
                \nM106 S0 ;Turn-off fan\
                \nM104 S0 ;Turn-off hotend\
                \nM140 S0 ;Turn-off bed\
                \nM84 X Y E ;Disable all steppers but Z")
    def set_start_code(self): 
         self.add_manual(f"; Ender 3 Custom Start G-code\
                \nM140 S{self.bed_temp}\
                \nM105\
                \nM190 S{self.bed_temp}\
                \nM104 S{self.ex_temp}\
                \nM105\
                \nM109 S{self.ex_temp}\
                \nG92 E0 ; Reset Extruder\
                \nG28 ; Home all axes\
                \nG1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed\
                \nG1 X0.1 Y20 Z0.3 F5000.0 ; Move to start position\
                \nG1 X0.1 Y200.0 Z0.3 F1500.0 E15 ; Draw the first line\
                \nG1 X0.4 Y200.0 Z0.3 F5000.0 ; Move to side a little\
                \nG1 X0.4 Y20 Z0.3 F1500.0 E30 ; Draw the second line\
                \nG92 E0 ; Reset Extruder\
                \nG1 Z2.0 F3000 ; Move Z Axis up little to prevent scratching of Heat Bed\
                \nG1 X5 Y20 Z0.3 F5000.0 ; Move over to prevent blob squish")



    def add_comment(self,comment):
        s = ";%s" % comment
        self.commands.append(s)

    def go_to(self,x=None, y=None, z=None, rate=None,e=None):
        list = [x, y, z, rate, e]
        names = ['X', 'Y', 'Z', 'F', 'E']
        s = self.add_comment(
            "Move to")
        s = 'G0'
        for i,item in enumerate(list):
            if item is not None:
                s = s + ' ' + names[i]+str(item)
        self.commands.append(s)
    def extrude_to(self, x=0, y=0, z=0, rate=200,e=None):  

        dist_travel = np.linalg.norm(np.array([x,y,z]))
        layerheight = 0.2
        nozzle_diameter = self.core_type
        d_fil = self.filament_diameter 
        added_e = (6*layerheight*nozzle_diameter*dist_travel)/(np.pi*d_fil**2)
        if(e is None):
            e = self.extrution_value
        e+=added_e
        self.extrution_value = e

        list = [x, y, z, rate, e]
        names = ['X','Y','Z','F','E']
        s = self.add_comment(
            "extrude to")
        s = 'G1'
        for i,item in enumerate(list):
            if item is not None:
                s = s + ' ' + names[i] +str(item)
        self.commands.append(s)
        self.number_of_extrudes+=1
    def extrude_um(self, x=None, y=None, z=None):  # extrude um
        list = [x, y, z]
        names = ['X','Y','Z']
        s = self.add_comment(
            "microextrusion")
        s = 'G1'
        for i,item in enumerate(list):
            if item is not None:
                s = s + ' ' + names[i] +str((item/1000))
        self.commands.append(s)


    def set_abs (self):
        self.add_comment("Set Absolute Position")
        self.add_manual('G90')
        self.pos_type = 'abs'
    def set_rel (self):
        self.add_comment("Set Relative Position")
        self.add_manual('G91')
        self.pos_type = 'rel'
    def dump_to_txt(self, s='output'):
        text_file = open("Output.txt", "w")
        text_file.write(self.output)
        text_file.close()
    def dump_to_gcode(self, s= 'output'):
        text_file = open("Output.gcode", "w")
        text_file.write(self.output)
        text_file.close()
        print('dumped to output.gcode')

    def fill_square(self,x): #fill a x by x square. Assume 0.1mm noz
        #fill square
        # Fills a x by x mm square
        original_posture = self.pos_type
        self.set_rel()
        for i in range (int((x)/(2*self.core_type))):
            self.extrude_to(x,0,0)
            self.go_to(0,self.core_type,0,2)
            self.extrude_to(-x,0,0)
            self.go_to(0,self.core_type,0,5)
        self.extrude_to(x,0,0)
        self.go_to(-x,-x)
        if(original_posture == 'abs'):
            self.set_abs()

    def squiggie (self,x,gap_size): #gap size in um
        original_posture = self.pos_type
        self.set_rel()

        jump = (gap_size/1000)+(self.core_type)

        self.jump_size = jump
        if jump<0.01:
            print("Compiler Warning, gap_size too small")
        
        distance_moved_y = 0
        for i in range (int(x/(2*jump))):
            self.extrude_to(x,0,0)
            self.go_to(0,jump,0)
            self.extrude_to(-x,0,0)
            self.go_to(0,jump,0)
            distance_moved_y+= (2*jump)
        self.extrude_to(x,0,0)
        self.go_to(-x,-distance_moved_y)
        if(original_posture =='abs'):
            self.set_abs()

    def next_layer(self,layer_height = 0.2):
        original_posture = self.pos_type
        self.set_rel()
        self.add_comment('next layer')
        self.go_to(x=0,y=0,z=0.2,rate=100)
        if(original_posture == 'abs'):
            self.set_abs()
    def reciprocate_layers(self, x, num):
        for i in range(num):
            self.fill_square(x)
            self.next_layer()
        


def main():
    printer = commands()

    printer.set_start_code()

    printer.add_manual('G92 E0')
    printer.set_abs()
    printer.go_to(20,20,0)
    printer.set_rel()
    printer.go_to(0,0,0)
        
    printer.reciprocate_layers(10,1)

    #printer.squiggie(10,500)
    #printer.next_layer()
    #printer.squiggie(10,500)


    printer.set_end_code()

    printer.compile()

    printer.dump_to_gcode()
    print("----------Print Stats-------------")
    print(f'The jump between consequetive surface extrusions is {printer.jump_size} mm in width')
    print(f'number of calls to extrude: {printer.number_of_extrudes}')
    return(printer.output)


if __name__ == '__main__':
    gc = main()

