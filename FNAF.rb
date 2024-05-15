require 'ruby2d'

#SCREEN SIZE   
set fullscreen: true
set height: 1080
set width: 1920

#               ASSETS
# TRANSITION
flicker = Sprite.new(
    'img/flicker.png',
    width: 1920, height: 1080, z: 0,
    animations: {
        anim: [
            {x: 0, y: 4, width: 1280, height: 720, time: 10},
            {x: 0, y: 726, width: 1280, height: 720, time: 10},
            {x: 0, y:1448, width: 1280, height: 720, time: 10},
            {x: 0, y: 2170, width: 1280, height: 720, time: 10},
            {x: 0, y: 2892, width: 1280, height: 720, time: 10},
            {x: 0, y: 3614, width: 1280, height: 720, time: 10},
            {x: 0, y:4336, width: 1280, height: 720, time: 10},
            {x: 0, y:5058, width: 1280, height: 720, time: 10},
            {x: 0, y:5780, width: 1280, height: 720, time: 10},
            {x: 0, y:6502, width: 1280, height: 720, time: 10},
            {x: 0, y:7224, width: 1280, height: 720, time: 10},
            {x: 0, y:7946, width: 1280, height: 720, time: 10},
            {x: 0, y:8668, width: 1280, height: 720, time: 10},
            {x: 0, y:9390, width: 1280, height: 720, time: 10},
            {x: 0, y:10112, width: 1280, height: 720, time: 10},
            {x: 0, y:10834, width: 1280, height: 720, time: 10},
            {x: 0, y:11556, width: 1280, height: 720, time: 10}
        ]
    }
)

# MENU
menu_arrows = Image.new(
    'img/menu/arrows.png',
    width: 43, height: 26,
    z: 2
)
menu_customizenight = Image.new(
    'img/menu/customize_night.png',
    width: 475, height: 65,
    x: 150, y: 720, z: 2
)
menu_newgame = Image.new(
    'img/menu/newgame.png',
    width: 305, height: 50,
    x: 150, y: 600, z: 2
)
menu_title = Image.new(
    'img/menu/title.png', 
    width: 402, height:424,
    x: 100, y: 100, z: 2

)
menu_static = Sprite.new(
    'img/menu/static.png',
    width: 1920, height: 1080, z: 3, color: [1,1,1,0.4], loop: true,
    animations: {
        anim: [
            {x: 0, y: 4, width: 1280, height: 720, time: 35},
            {x: 0, y: 726, width: 1280, height: 720, time: 35},
            {x: 0, y:1448, width: 1280, height: 720, time: 35},
            {x: 0, y: 2170, width: 1280, height: 720, time: 35},
            {x: 0, y: 2892, width: 1280, height: 720, time: 35},
            {x: 0, y: 3614, width: 1280, height: 720, time: 35},
            {x: 0, y:4336, width: 1280, height: 720, time: 35},
            {x: 0, y:5058, width: 1280, height: 720, time: 35}
        ]
    }
)
menu_freddy = Sprite.new(
    'img/menu/freddy.png',
    width: 1920, height: 1080, z: 1,
    animations: {
        anim1: [
            { x: 0, y: 4, width: 1280, height: 720, time: 2500 },
            { x: 0, y: 726, width: 1280, height: 720, time: 500 },
        ],
        anim2: [
            { x: 0, y: 4, width: 1280, height: 720, time: 2500 },
            { x: 0, y: 726, width: 1280, height: 720, time: 50 },
            { x: 0, y: 1448, width: 1280, height: 720, time: 50 },
            { x: 0, y: 2170, width: 1280, height: 720, time: 50 }
        ],
        anim3: [
            { x: 0, y: 4, width: 1280, height: 720, time: 2500 },
            { x: 0, y: 1448, width: 1280, height: 720, time: 100 },
            { x: 0, y: 2170, width: 1280, height: 720, time: 50 }
        ],
    }
)
menu_night = Sprite.new(
    'img/menu/night.png',
    width: 432, height: 56, loop: true,
    x: 150, y: 00, z: 10,
    animations: {
        night1: [
            {x: 0, y: 0, width: 240, height: 31}
        ],
        night2: [
            {x: 0, y: 31, width: 240, height: 31}
        ],
        night3: [
            {x: 0, y: 62, width: 240, height: 31}
        ],
        night4: [
            {x: 0, y: 93, width: 240, height: 31}
        ],
        night5: [
            {x: 0, y: 124, width: 240, height: 31}
        ],
        night6: [
            {x: 0, y: 155, width: 240, height: 31}
        ],
        night7: [
            {x: 0, y: 186, width: 240, height: 32}
        ]
    }
)
menu_newgame.play animation: :night7
# ROOM
fan = Sprite.new(
    'img/office/fan.png',
    clip_width: 137, time: 40, loop: true,
    width: 220, height: 294,
    x: 958, y: 454, z: 2
)
office_room = Image.new(
    'img/office/office.png',
    width: 2574, height: 1080,
    x: -297, y: 0, z: 1
)

# BUTTONS
button_R00 = Image.new(
    'img/office/buttons/R00.png',
    width: 138, height: 444,
    x: 2230, y: 380, z: 5
)
button_R01 = Image.new(
    'img/office/buttons/R01.png',
    width: 138, height: 444,
    x: 2230, y: 380, z: 0
)
button_R10 = Image.new(
    'img/office/buttons/R10.png',
    width: 138, height: 444,
    x:2230, y: 380, z: 0
)
button_R11 = Image.new(
    'img/office/buttons/R11.png',
    width: 138, height: 444,
    x: 2230, y: 380, z:0
)
button_L01 = Image.new(
    'img/office/buttons/L01.png',
    width: 138, height: 444,
    x: -250, y: 380, z: 0
)
button_L10 = Image.new(
    'img/office/buttons/L10.png',
    width: 138, height: 444,
    x: -250, y: 380, z: 0
)
button_L11 = Image.new(
    'img/office/buttons/L11.png',
    width: 138, height: 444,
    x: -250, y: 380, z: 0
)
button_L00 = Image.new(
    'img/office/buttons/L00.png',
    width: 138, height: 444,
    x: -250, y: 380, z: 5
)

# LIGHTS
office_lightL = Sprite.new(
    'img/office/hallwayL.png',
    width: 885, height: 1080,
    x: 0, y: 0, z: 0,
    animations: {
        anim0: [
            { x: 550, y: 0, width: 550, height: 720, time: 800},
            { x: 0, y: 0, width: 550, height: 720, time: 100},
            { x: 550, y: 0, width: 550, height: 720, time: 100},
            { x: 0, y: 0, width: 550, height: 720, time: 100},
            { x: 550, y: 0, width: 550, height: 720, time: 200},
            { x: 0, y: 0, width: 550, height: 720, time: 100},
            { x: 550, y: 0, width: 550, height: 720, time: 250},
            { x: 0, y: 0, width: 550, height: 720, time: 100},
            { x: 550, y: 0, width: 550, height: 720, time: 1500},
            { x: 0, y: 0, width: 550, height: 720, time: 100},
        ],
        anim1: [
            { x: 550, y: 720, width: 550, height: 720, time: 800},
            { x: 0, y: 720, width: 550, height: 720, time: 100},
            { x: 550, y: 720, width: 550, height: 720, time: 100},
            { x: 0, y: 720, width: 550, height: 720, time: 100},
            { x: 550, y: 720, width: 550, height: 720, time: 200},
            { x: 0, y: 720, width: 550, height: 720, time: 100},
            { x: 550, y: 720, width: 550, height: 720, time: 250},
            { x: 0, y: 720, width: 550, height: 720, time: 100},
            { x: 550, y: 720, width: 550, height: 720, time: 1500},
            { x: 0, y: 720, width: 550, height: 720, time: 100},
        ]
    }
)
office_lightR = Sprite.new(
    'img/office/hallwayR.png',
    width: 885, height: 1080,
    x: 0, y:0, z: 0,
    animations: {
        anim0: [
            { x: 550, y: 0, width: 550, height: 720, time: 800},
            { x: 0, y: 0, width: 550, height: 720, time: 100},
            { x: 550, y: 0, width: 550, height: 720, time: 100},
            { x: 0, y: 0, width: 550, height: 720, time: 100},
            { x: 550, y: 0, width: 550, height: 720, time: 200},
            { x: 0, y: 0, width: 550, height: 720, time: 100},
            { x: 550, y: 0, width: 550, height: 720, time: 250},
            { x: 0, y: 0, width: 550, height: 720, time: 100},
            { x: 550, y: 0, width: 550, height: 720, time: 1500},
            { x: 0, y: 0, width: 550, height: 720, time: 100},
        ],
        anim1: [
            { x: 550, y: 720, width: 550, height: 720, time: 800},
            { x: 0, y: 720, width: 550, height: 720, time: 100},
            { x: 550, y: 720, width: 550, height: 720, time: 100},
            { x: 0, y: 720, width: 550, height: 720, time: 100},
            { x: 550, y: 720, width: 550, height: 720, time: 200},
            { x: 0, y: 720, width: 550, height: 720, time: 100},
            { x: 550, y: 720, width: 550, height: 720, time: 250},
            { x: 0, y: 720, width: 550, height: 720, time: 100},
            { x: 550, y: 720, width: 550, height: 720, time: 1500},
            { x: 0, y: 720, width: 550, height: 720, time: 100},
        ]
    }
)

# DOORS
office_doorR = Image.new(
    'img/office/doorR.png',
    width: 332, height: 1080,
    x: 1450, y: 0, z: 0
)
office_doorsR = Sprite.new(
    'img/office/doors.png',
    width: 332, height: 1080,
    x: 1450, y: 0, z: 0,
    animations: {
        close: [
            {x: 0, y: 78, width: 193, height: 720, time: 20},
            {x: 751, y: 78, width: 193, height: 720, time: 20},
            {x: 1000, y: 78, width: 193, height: 720, time: 20},
            {x: 1498, y: 78, width: 193, height: 720, time: 20},
            {x: 253, y: 799, width: 193, height: 720, time: 20},
            {x: 502, y: 799, width: 193, height: 720, time: 20},
            {x: 751, y: 799, width: 193, height: 720, time: 20},
            {x: 1000, y: 799, width: 193, height: 720, time: 20},
            {x: 1249, y: 799, width: 193, height: 720, time: 20},
            {x: 1498, y: 799, width: 193, height: 720, time: 20},
            {x: 253, y: 1520, width: 193, height: 720, time: 20},
            {x: 1000, y: 1520, width: 193, height: 720, time: 20},
        ],
        open: [
            {x: 1000, y: 1520, width: 193, height: 720, time: 20},
            {x: 253, y: 1520, width: 193, height: 720, time: 20},
            {x: 1498, y: 799, width: 193, height: 720, time: 20},
            {x: 1249, y: 799, width: 193, height: 720, time: 20},
            {x: 1000, y: 799, width: 193, height: 720, time: 20},
            {x: 751, y: 799, width: 193, height: 720, time: 20},
            {x: 502, y: 799, width: 193, height: 720, time: 20},
            {x: 253, y: 799, width: 193, height: 720, time: 20},
            {x: 1498, y: 78, width: 193, height: 720, time: 20},
            {x: 1000, y: 78, width: 193, height: 720, time: 20},
            {x: 751, y: 78, width: 193, height: 720, time: 20},
            {x: 0, y: 78, width: 193, height: 720, time: 20},
        ]
    }

)
office_doorsL = Sprite.new(
    'img/office/doors2.png',
    width: 332, height: 1080,
    x: 160, y: 0, z: 0,
    animations: {
        close: [
            {x: 1557, y: 78, width: 193, height: 720, time: 20},
            {x: 806, y: 78, width: 193, height: 720, time: 20},
            {x: 557, y: 78, width: 193, height: 720, time: 20},
            {x: 59, y: 78, width: 193, height: 720, time: 20},
            {x: 1304, y: 799, width: 193, height: 720, time: 20},
            {x: 1055, y: 799, width: 193, height: 720, time: 20},
            {x: 806, y: 799, width: 193, height: 720, time: 20},
            {x: 557, y: 799, width: 193, height: 720, time: 20},
            {x: 308, y: 799, width: 193, height: 720, time: 20},
            {x: 59, y: 799, width: 193, height: 720, time: 20},
            {x: 1304, y: 1520, width: 193, height: 720, time: 20},
            {x: 557, y: 1520, width: 193, height: 720, time: 20},
        ],
        open: [
            {x: 557, y: 1520, width: 193, height: 720, time: 20},
            {x: 1304, y: 1520, width: 193, height: 720, time: 20},
            {x: 59, y: 799, width: 193, height: 720, time: 20},
            {x: 308, y: 799, width: 193, height: 720, time: 20},
            {x: 557, y: 799, width: 193, height: 720, time: 20},
            {x: 806, y: 799, width: 193, height: 720, time: 20},
            {x: 1055, y: 799, width: 193, height: 720, time: 20},
            {x: 1304, y: 799, width: 193, height: 720, time: 20},
            {x: 59, y: 78, width: 193, height: 720, time: 20},
            {x: 557, y: 78, width: 193, height: 720, time: 20},
            {x: 806, y: 78, width: 193, height: 720, time: 20},
            {x: 1557, y: 78, width: 193, height: 720, time: 20},
        ]
    }

)
office_doorL = Image.new(
    'img/office/doorL.png',
    width: 332, height: 1080,
    x: 160
)

# JUMPSCARE
jumpscare_bonnie = Sprite.new(
    'img/jumpscares/bonnie.png',
    width: 2574, height: 1080,
    x: -297, y: 0,
    animations: {
        anim: [
            {x:0, y: 4, width: 1600, height: 720, time: 30},
            {x:0, y: 726, width: 1600, height: 720, time: 30},
            {x:0, y: 1448, width: 1600, height: 720, time: 30},
            {x:0, y: 2170, width: 1600, height: 720, time: 30},
            {x:0, y: 2892, width: 1600, height: 720, time: 30},
            {x:0, y: 3614, width: 1600, height: 720, time: 30},
            {x:0, y: 4336, width: 1600, height: 720, time: 30},
            {x:0, y: 5058, width: 1600, height: 720, time: 30},
            {x:0, y: 5780, width: 1600, height: 720, time: 30},
            {x:0, y: 6502, width: 1600, height: 720, time: 30},
            {x:0, y: 7224, width: 1600, height: 720, time: 30},
            {x:0, y: 6502, width: 1600, height: 720, time: 30},
            {x:0, y: 5780, width: 1600, height: 720, time: 30},
            {x:0, y: 5058, width: 1600, height: 720, time: 30},
            {x:0, y: 4336, width: 1600, height: 720, time: 30},
            {x:0, y: 3614, width: 1600, height: 720, time: 30},
            {x:0, y: 2892, width: 1600, height: 720, time: 30},
        ]
    }
)
jumpscare_chica = Sprite.new(
    'img/jumpscares/chica.png',
    width: 2574, height: 1080,
    x: -297, y: 0,
    animations: {
        anim: [
            {x:0, y: 4, width: 1600, height: 720, time: 30},
            {x:0, y: 726, width: 1600, height: 720, time: 30},
            {x:0, y: 1448, width: 1600, height: 720, time: 30},
            {x:0, y: 2170, width: 1600, height: 720, time: 30},
            {x:0, y: 2892, width: 1600, height: 720, time: 30},
            {x:0, y: 3614, width: 1600, height: 720, time: 30},
            {x:0, y: 4336, width: 1600, height: 720, time: 30},
            {x:0, y: 5058, width: 1600, height: 720, time: 30},
            {x:0, y: 5780, width: 1600, height: 720, time: 30},
            {x:0, y: 6502, width: 1600, height: 720, time: 30},
            {x:0, y: 7224, width: 1600, height: 720, time: 30},
            {x:0, y: 7946, width: 1600, height: 720, time: 30},
            {x:0, y: 8668, width: 1600, height: 720, time: 30},
            {x:0, y: 9390, width: 1600, height: 720, time: 30},
            {x:0, y: 10112, width: 1600, height: 720, time: 30},
            {x:0, y: 10834, width: 1600, height: 720, time: 30},
        ]
    }
)
jumpscare_freddy = Sprite.new(
    'img/jumpscares/freddy.png',
    width: 2574, height: 1080,
    x: -297, y: 0, 
    animations: {
        anim: [
            {x:0, y: 0, width: 1600, height: 720, time: 30},
            {x:0, y: 720, width: 1600, height: 720, time: 30},
            {x:0, y: 1440, width: 1600, height: 720, time: 30},
            {x:0, y: 2160, width: 1600, height: 720, time: 30},
            {x:0, y: 2880, width: 1600, height: 720, time: 30},
            {x:0, y: 3600, width: 1600, height: 720, time: 30},
            {x:0, y: 4320, width: 1600, height: 720, time: 30},
            {x:0, y: 5040, width: 1600, height: 720, time: 30},
            {x:0, y: 5760, width: 1600, height: 720, time: 30},
            {x:0, y: 6480, width: 1600, height: 720, time: 30},
            {x:0, y: 7200, width: 1600, height: 720, time: 30},
            {x:0, y: 7920, width: 1600, height: 720, time: 30},
            {x:0, y: 8640, width: 1600, height: 720, time: 30},
            {x:0, y: 9360, width: 1600, height: 720, time: 30},
            {x:0, y: 10080, width: 1600, height: 720, time: 30},
            {x:0, y: 10800, width: 1600, height: 720, time: 30},
            {x:0, y: 11520, width: 1600, height: 720, time: 30},
            {x:0, y: 12240, width: 1600, height: 720, time: 30},
            {x:0, y: 12960, width: 1600, height: 720, time: 30},
            
        ]
    }
)
jumpscare_freddy2 = Sprite.new(
    'img/jumpscares/freddy2.jpg',
    width: 2574, height: 1080,
    x: -297, y: 0, 
    animations: {
        anim: [
            {x:0, y: 0, width: 1280, height: 720, time: 30},
            {x:0, y: 720, width: 1280, height: 720, time: 30},
            {x:0, y: 1440, width: 1280, height: 720, time: 30},
            {x:0, y: 2160, width: 1280, height: 720, time: 30},
            {x:0, y: 2880, width: 1280, height: 720, time: 30},
            {x:0, y: 3600, width: 1280, height: 720, time: 30},
            {x:0, y: 4320, width: 1280, height: 720, time: 30},
            {x:0, y: 5040, width: 1280, height: 720, time: 30},
            {x:0, y: 5760, width: 1280, height: 720, time: 30},
            {x:0, y: 6480, width: 1280, height: 720, time: 30},
            {x:0, y: 7200, width: 1280, height: 720, time: 30},
            {x:0, y: 7920, width: 1280, height: 720, time: 30},
            {x:0, y: 8640, width: 1280, height: 720, time: 30},
            {x:0, y: 9360, width: 1280, height: 720, time: 30},
            {x:0, y: 10080, width: 1280, height: 720, time: 30},
            {x:0, y: 10800, width: 1280, height: 720, time: 30},
            {x:0, y: 11520, width: 1280, height: 720, time: 30},
            {x:0, y: 12240, width: 1280, height: 720, time: 30},
            {x:0, y: 12960, width: 1280, height: 720, time: 30},
            
        ]
    }
)
jumpscare_foxy = Sprite.new(
    'img/jumpscares/foxy.png',
    width: 2574, height: 1080,
    x: -297, y: 0,
    animations: {
        anim: [
            {x:0, y: 4, width: 1600, height: 720, time: 30},
            {x:0, y: 726, width: 1600, height: 720, time: 30},
            {x:0, y: 1448, width: 1600, height: 720, time: 30},
            {x:0, y: 2170, width: 1600, height: 720, time: 30},
            {x:0, y: 2892, width: 1600, height: 720, time: 30},
            {x:0, y: 3614, width: 1600, height: 720, time: 30},
            {x:0, y: 4336, width: 1600, height: 720, time: 30},
            {x:0, y: 5058, width: 1600, height: 720, time: 30},
            {x:0, y: 5780, width: 1600, height: 720, time: 30},
            {x:0, y: 6502, width: 1600, height: 720, time: 30},
            {x:0, y: 7224, width: 1600, height: 720, time: 30},
            {x:0, y: 7946, width: 1600, height: 720, time: 30},
            {x:0, y: 8668, width: 1600, height: 720, time: 30},
            {x:0, y: 9390, width: 1600, height: 720, time: 30},
            {x:0, y: 10112, width: 1600, height: 720, time: 30},
            {x:0, y: 10834, width: 1600, height: 720, time: 30},
            {x:0, y: 11556, width: 1600, height: 720, time: 30},
            {x:0, y: 12278, width: 1600, height: 720, time: 30},
            {x:0, y: 13000, width: 1600, height: 720, time: 30},
            {x:0, y: 13722, width: 1600, height: 720, time: 30},
        ]
    }
)

#       CAMERA HUD
static_cam = Sprite.new(
    'img/menu/static.png',
    width: 1920, height: 1080, color: [1,1,1,0.2], loop: true,
    animations: {
        anim: [
            {x: 0, y: 4, width: 1280, height: 720, time: 22},
            {x: 0, y: 726, width: 1280, height: 720, time: 22},
            {x: 0, y:1448, width: 1280, height: 720, time: 22},
            {x: 0, y: 2170, width: 1280, height: 720, time: 22},
            {x: 0, y: 2892, width: 1280, height: 720, time: 22},
            {x: 0, y: 3614, width: 1280, height: 720, time: 22},
            {x: 0, y:4336, width: 1280, height: 720, time: 22},
            {x: 0, y:5058, width: 1280, height: 720, time: 22},
        ]
    }
)
map = Image.new(
    'img/camera/map.png',
    width: 600, height: 600,
    x: 1296, y: 380, z: 0
)
cam_titles = Sprite.new(
    'img/camera/title.png',
    width: 568, height: 52,
    x: 60, y: 60, loop: true, color: [1,1,1,0.8],
    animations: {
        show_stage: [
            {x: 0, y: 0, width: 284, height: 26, time: 1000}
        ],
        dining_area: [
            {x: 0, y: 26, width: 284, height: 26, time: 1000}
        ],
        pirate_cove: [
            {x: 0, y: 52, width: 284, height: 24, time: 1000}
        ],
        west_hall: [
            {x: 0, y: 76, width: 284, height: 26, time: 1000}
        ],
        supply_closet: [
            {x: 0, y: 102, width: 284, height: 26, time: 1000}
        ],
        east_hall: [
            {x: 0, y: 128, width: 284, height: 26, time: 1000}
        ],
        backstage: [
            {x: 0, y: 154, width: 284, height: 26, time: 1000}
        ],
        kitchen: [
            {x: 0, y: 180, width: 284, height: 26, time: 1000}
        ],
        restrooms: [
            {x:0, y: 206, width: 284, height: 26, time: 1000}
        ]
    }
)
camera_border = Image.new(
    'img/camera/border.png',
    width: 1920, height: 1080,
    x: 0, y: 0, z: 0
)
#   GREEN BOX
greenbox = Image.new(
    'img/camera/greenbox.png',
    width: 90, height: 60,
    x: 1453, y: 415, z: 0
)
#   CAMERA BOX TITLES
cam1a_button = Image.new(
    'img/camera/cam1a.png',
    width: 47, height: 38,
    x: 1465, y:426, z: 0
)
cam1b_button = Image.new(
    'img/camera/cam1b.png',
    width: 47, height: 38,
    x: 1458, y: 511, z: 0
)
cam1c_button = Image.new(
    'img/camera/cam1c.png',
    width: 47, height: 38,
    x: 1396, y: 626, z: 0
)
cam2a_button = Image.new(
    'img/camera/cam2a.png',
    width: 47, height: 38,
    x:1486, y: 785, z: 0
)
cam2b_button = Image.new(
    'img/camera/cam2b.png',
    width: 47, height: 38,
    x: 1424, y: 867, z: 0
)
cam3_button = Image.new(
    'img/camera/cam3.png',
    width: 47, height: 38,
    x: 1341, y: 767, z: 0
)
cam4a_button = Image.new(
    'img/camera/cam4a.png',
    width: 47, height: 38,
    x: 1584, y: 785, z: 0
)
cam4b_button = Image.new(
    'img/camera/cam4b.png',
    width: 47, height: 38,
    x: 1637, y: 867, z: 0
)
cam5_button = Image.new(
    'img/camera/cam5.png',
    width: 47, height: 38,
    x: 1334, y: 532, z: 0
)
cam6_button = Image.new(
    'img/camera/cam6.png',
    width: 47, height: 38,
    x: 1794, y: 746, z: 0
)
cam7_button = Image.new(
    'img/camera/cam7.png',
    width: 47, height: 38,
    x: 1794, y: 509, z: 0
)

# SCREEN
camera_screen = Sprite.new( 
    'img/camera/camera_screen.png',
    width: 1920, height: 1080,
    animations: {
        open:[
            {x:2, y: 2, width: 1280, height: 720, time: 20},
            {x:1284, y: 2, width: 1280, height: 720, time: 20},
            {x:2566, y: 2, width: 1280, height: 720, time: 20},
            {x:3848, y: 2, width: 1280, height: 720, time: 20},
            {x:2, y: 724, width: 1280, height: 720, time: 20},
            {x:1284, y: 724, width: 1280, height: 720, time: 20},
            {x:2566, y: 724, width: 1280, height: 720, time: 20},
            {x:3848, y: 724, width: 1280, height: 720, time: 20},
            {x:2, y: 1446, width: 1280, height: 720, time: 20},
            {x:1284, y: 1446, width: 1280, height: 720, time: 20},
            {x:2566, y: 1446, width: 1280, height: 720, time: 20}
        ],
        close:[
            {x:2566, y: 1446, width: 1280, height: 720, time: 20},
            {x:1284, y: 1446, width: 1280, height: 720, time: 20},
            {x:2, y: 1446, width: 1280, height: 720, time: 20},
            {x:3848, y: 724, width: 1280, height: 720, time: 20},
            {x:2566, y: 724, width: 1280, height: 720, time: 20},
            {x:1284, y: 724, width: 1280, height: 720, time: 20},
            {x:2, y: 724, width: 1280, height: 720, time: 20},
            {x:3848, y: 2, width: 1280, height: 720, time: 20},
            {x:2566, y: 2, width: 1280, height: 720, time: 20},
            {x:1284, y: 2, width: 1280, height: 720, time: 20},
            {x:2, y: 2, width: 1280, height: 720, time: 20},
        ]
    }
)

#CAMERA OFFICE BUTTON
camera_button = Image.new(
    'img/camera/camera_button.png',
    width: 900, height: 90,
    x: 510, y: 956, z: 9
)

#       CAMERA IMAGES
#CAM 1A
cam1a_image_B0C0F0 = Image.new(
    'img/camera/rooms/show stage/B0C0F0.png',
    width: 2400, height: 1080,
    x: -240,
)
cam1a_image_B1C1F1_1 = Image.new(
    'img/camera/rooms/show stage/B1C1F1_1.png',
    width: 2400, height: 1080,
    x: -240,
)
cam1a_image_B1C1F1_2 = Image.new(
    'img/camera/rooms/show stage/B1C1F1_2.png',
    width: 2400, height: 1080,
    x: -240,
)
cam1a_image_B0C1F1 = Image.new(
    'img/camera/rooms/show stage/B0C1F1.png',
    width: 2400, height: 1080,
    x: -240
)
cam1a_image_B1C0F1 = Image.new(
    'img/camera/rooms/show stage/B1C0F1.png',
    width: 2400, height: 1080,
    x: -240
)
cam1a_image_B0C0F1 = Image.new(
    'img/camera/rooms/show stage/B0C0F1.png',
    width: 2400, height: 1080,
    x: -240
)

#CAM 1B
cam1b_image_B0C0F0 = Image.new(
    'img/camera/rooms/dining area/B0C0F0.png',
    width: 2400, height: 1080,
    x: -240,
)
cam1b_image_B1C1F1 = Image.new(
    'img/camera/rooms/dining area/B1C1F1.jpg',
    width: 2400, height: 1080,
    x: -240
)
cam1b_image_B0C0F1 = Image.new(
    'img/camera/rooms/dining area/B0C0F1.png',
    width: 2400, height: 1080,
    x: -240
)
cam1b_image_B0C1F0 = Image.new(
    'img/camera/rooms/dining area/B0C1F0.png',
    width: 2400, height: 1080,
    x: -240
)
cam1b_image_B0C1F1 = Image.new(
    'img/camera/rooms/dining area/B0C1F1.png',
    width: 2400, height: 1080,
    x: -240
)
cam1b_image_B1C0F0 = Image.new(
    'img/camera/rooms/dining area/B1C0F0.png',
    width: 2400, height: 1080,
    x: -240
)
cam1b_image_B1C0F1 = Image.new(
    'img/camera/rooms/dining area/B1C0F1.png',
    width: 2400, height: 1080,
    x: -240
)
cam1b_image_B1C1F0 = Image.new(
    'img/camera/rooms/dining area/B1C1F0.jpg',
    width: 2400, height: 1080,
    x: -240
)

#CAM 1C
cam1c_image_F0 = Image.new(
    'img/camera/rooms/pirates cove/F0.png',
    width: 2400, height: 1080,
    x: -240,
)
cam1c_image_F1 = Image.new(
    'img/camera/rooms/pirates cove/F1.png',
    width: 2400, height: 1080,
    x: -240
)
cam1c_image_F2 = Image.new(
    'img/camera/rooms/pirates cove/F2.png',
    width: 2400, height: 1080,
    x: -240
)
cam1c_image_F3 = Image.new(
    'img/camera/rooms/pirates cove/F3.png',
    width: 2400, height: 1080,
    x: -240
)

#CAM 2A
cam2a_image_B0 = Image.new(
    'img/camera/rooms/west hall A/B0.png',
    width: 2400, height: 1080,
    x: -240,
)
cam2a_image_B1 = Image.new(
    'img/camera/rooms/west hall A/B1.png',
    width: 2400, height: 1080,
    x: -240
)
cam2a_sprite_F1 = Sprite.new(
    'img/camera/rooms/west hall A/F1.png',
    width: 2574, height: 1080,
    x: -297, y: 0, 
    animations: {
        anim: [
            {x:0, y: 0, width: 1600, height: 720, time: 40},
            {x:0, y: 720, width: 1600, height: 720, time: 40},
            {x:0, y: 1440, width: 1600, height: 720, time: 40},
            {x:0, y: 2160, width: 1600, height: 720, time: 40},
            {x:0, y: 2880, width: 1600, height: 720, time: 40},
            {x:0, y: 3600, width: 1600, height: 720, time: 40},
            {x:0, y: 4320, width: 1600, height: 720, time: 40},
            {x:0, y: 5040, width: 1600, height: 720, time: 40},
            {x:0, y: 5760, width: 1600, height: 720, time: 40},
            {x:0, y: 6480, width: 1600, height: 720, time: 40},
            {x:0, y: 7200, width: 1600, height: 720, time: 40},
            {x:0, y: 7920, width: 1600, height: 720, time: 40},
            {x:0, y: 8640, width: 1600, height: 720, time: 40},
            {x:0, y: 9360, width: 1600, height: 720, time: 40},
            {x:0, y: 10080, width: 1600, height: 720, time: 40},
            {x:0, y: 10800, width: 1600, height: 720, time: 40},
            {x:0, y: 11520, width: 1600, height: 720, time: 40},
            {x:0, y: 12240, width: 1600, height: 720, time: 40},
            {x:0, y: 12960, width: 1600, height: 720, time: 1300},
            
        ]
    }
)

#CAM 2B
cam2b_image_B0_1 = Image.new(
    'img/camera/rooms/west hall B/B0_1.png',
    width: 2400, height: 1080,
    x: -240,
)
cam2b_image_B0_2 = Image.new(
    'img/camera/rooms/west hall B/B0_2.png',
    width: 2400, height: 1080,
    x: -240
)
cam2b_image_B1_1 = Image.new(
    'img/camera/rooms/west hall B/B1_1.png',
    width: 2400, height: 1080,
    x: -240
)
cam2b_image_B1_2 = Image.new(
    'img/camera/rooms/west hall B/B1_2.png',
    width: 2400, height: 1080,
    x: -240
)

#CAM 3
cam3_image_B0 = Image.new(
    'img/camera/rooms/supply closet/B0.png',
    width: 2400, height: 1080,
    x: -240
)
cam3_image_B1 = Image.new(
    'img/camera/rooms/supply closet/B1.png',
    width: 2400, height: 1080,
    x: -240
)

#CAM 4A
cam4a_image_C0F0 = Image.new(
    'img/camera/rooms/east hall A/C0F0.png',
    width: 2400, height: 1080,
    x: -240
)
cam4a_image_C1F1 = Image.new(
    'img/camera/rooms/east hall A/C1F1.jpg',
    width: 2400, height: 1080, 
    x: -240
)
cam4a_image_C1F0 = Image.new(
    'img/camera/rooms/east hall A/C1F0.png',
    width: 2400, height: 1080, 
    x: -240
)
cam4a_image_C0F1 = Image.new(
    'img/camera/rooms/east hall A/C0F1.png',
    width: 2400, height: 1080, 
    x: -240
)

#CAM 4B
cam4b_image_C0F0 = Image.new(
    'img/camera/rooms/east hall B/C0F0.png',
    width: 2400, height: 1080,
    x: -240
)
cam4b_image_C1F0_1 = Image.new(
    'img/camera/rooms/east hall B/C1F0_1.png',
    width: 2400, height: 1080,
    x: -240
)
cam4b_image_C1F0_2 = Image.new(
    'img/camera/rooms/east hall B/C1F0_2.png',
    width: 2400, height: 1080,
    x: -240
)
cam4b_image_C1F0_3 = Image.new(
    'img/camera/rooms/east hall B/C1F0_3.png',
    width: 2400, height: 1080,
    x: -240
)
cam4b_image_F1 = Image.new(
    'img/camera/rooms/east hall B/F1.png',
    width: 2400, height: 1080,
    x: -240
)

#CAM 5
cam5_image_B0 = Image.new(
    'img/camera/rooms/back stage/B0.png',
    width: 2400, height: 1080,
    x: -240
)
cam5_image_B1_1 = Image.new(
    'img/camera/rooms/back stage/B1_1.png',
    width: 2400, height: 1080,
    x: -240
)
cam5_image_B1_2 = Image.new(
    'img/camera/rooms/back stage/B1_2.png',
    width: 2400, height: 1080,
    x: -240
)

#CAM 6
cam6_image = Image.new(
    'img/camera/rooms/kitchen/kitchen.png'
)

#CAM 7
cam7_image_C0F0 = Image.new(
    'img/camera/rooms/restrooms/C0F0.png',
    width: 2400, height: 1080,
    x: -240
)
cam7_image_C1F1 = Image.new(
    'img/camera/rooms/restrooms/C1F1.jpg',
    width: 2400, height: 1080,
    x: -240
)
cam7_image_C1F0 = Image.new(
    'img/camera/rooms/restrooms/C1F0.png',
    width: 2400, height: 1080,
    x: -240
)
cam7_image_C0F1 = Image.new(
    'img/camera/rooms/restrooms/C0F1.png',
    width: 2400, height: 1080,
    x: -240
)

# CLOCK
clock = Sprite.new(
    'img/clock/12-5clock.png',
    width: 167, height: 42,
    x: 1703, y: 50, loop: true,
    animations: {
        am12: [
            {x: 0, y: 0, height: 28, width: 111}
        ],
        am1: [
            {x: 0, y: 28, height: 28, width: 111}
        ],
        am2: [
            {x: 0, y: 56, height: 28, width: 111}
        ],
        am3: [
            {x: 0, y: 84, height: 28, width: 111}
        ],
        am4: [
            {x: 0, y: 112, height: 28, width: 111}
        ],
        am5: [
            {x: 0, y: 140, height: 28, width: 111}
        ],
    }
)
transitionClock5_6 = Sprite.new(
    'img/clock/5-6clock.png',
    width: 250, height: 75,
    x: 835, y: 502,
    animations: {
        anim:[
            {x: 0, y: 0, width: 100, height: 30, time: 1000},
            {x: 0, y: 30, width: 100, height: 30, time: 80},
            {x: 0, y: 60, width: 100, height: 30, time: 80},
            {x: 0, y: 90, width: 100, height: 30, time: 80},
            {x: 0, y: 120, width: 100, height: 30, time: 80},
            {x: 0, y: 150, width: 100, height: 30, time: 80},
            {x: 0, y: 180, width: 100, height: 30, time: 80},
            {x: 0, y: 210, width: 100, height: 30, time: 80},
            {x: 0, y: 240, width: 100, height: 30, time: 80},
            {x: 0, y: 270, width: 100, height: 30, time: 80},
            {x: 0, y: 300, width: 100, height: 30, time: 80},
            {x: 0, y: 330, width: 100, height: 30, time: 80},
            {x: 0, y: 360, width: 100, height: 30, time: 4120},
        ]
    }
)
transitionClockNight = Sprite.new(
    'img/clock/nightclock.png',
    width: 336, height: 136,
    x: 792, y: 472, loop: true,
    animations: {
        night1:[
            {x: 0, y: 0, width: 240, height: 97}
        ],
        night2:[
            {x: 0, y: 97, width: 240, height: 97}
        ],
        night3:[
            {x: 0, y: 194, width: 240, height: 97}
        ],
        night4:[
            {x: 0, y: 291, width: 240, height: 97}
        ],
        night5:[
            {x: 0, y: 388, width: 240, height: 97}
        ],
        night6:[
            {x: 0, y: 485, width: 240, height: 97}
        ],
        night7:[
            {x: 0, y: 582, width: 240, height: 97}
        ]
    }
)

# POWER
usageImage = Sprite.new(
    'img/power/usage.png',
    width: 425, height: 74,
    x: 60, y: 800, loop: true,
    animations: {
        zero: [
            {x: 0, y: 0, width: 185, height: 32}
        ],
        one: [
            {x: 0, y: 32, width: 185, height: 32}
        ],
        two: [
            {x: 0, y: 64, width: 185, height: 32}
        ],
        three: [
            {x: 0, y: 96, width: 185, height: 32}
        ],
        four: [
            {x: 0, y: 128, width: 185, height: 32}
        ],
        five: [
            {x: 0, y: 160, width: 185, height: 32}
        ]
    }
)
text_power = Text.new(
  "Power  left: 100 %",
  x: 60, y: 902,
  font: 'img/power/fnaf-pixelfont.otf',
  size: 58,
)
#Outage
outage = Sprite.new(
    'img/office/outage.png',
    width: 2574, height: 1080,
    x: 0, y: 0,
    animations:{
        anim: [
            {x: 0, y: 0, width: 1600, height: 720, time: 4000},
            {x: 0, y: 720, width: 1600, height: 720, time: 1000},
            {x: 0, y: 0, width: 1600, height: 720, time: 500},
            {x: 0, y: 720, width: 1600, height: 720, time: 500},
            {x: 0, y: 0, width: 1600, height: 720, time: 1500},
            {x: 0, y: 720, width: 1600, height: 720, time: 500},
            {x: 0, y: 0, width: 1600, height: 720, time: 500},
            {x: 0, y: 720, width: 1600, height: 720, time: 500},
            {x: 0, y: 0, width: 1600, height: 720, time: 6000},
        ]
    }
)

clear #deleting all of the assets of the screen

#           VARIABLES
#Player
$player = true
#Game State
$game_started = false
$menu_started = true
$custom_started = false
$game_time = Time.now
#Buttons
$buttonL_active = button_L00 
$buttonR_active = button_R00
$cooldownDoor = Time.now
#Night
current_night = 1
#Animatronics
bonnie = {'room' => 'show stage', 'difficulty' => 20, 'move' => Time.now}
freddy = {'room' => 'show stage', 'difficulty' => 20, 'move' => Time.now}
chica =  {'room' => 'show stage', 'difficulty' => 20, 'move' => Time.now}
foxy = {'room' => 'stage 0', 'difficulty' => 20, 'sight' => false, 'move' => Time.now}

#   Cameras
$cooldownCams = Time.now
cam1a = cam1a_image_B1C1F1_1
cam1b = cam1b_image_B0C0F0
cam1c = cam1c_image_F0
cam2a = cam2a_image_B0
cam2b = cam2b_image_B0_1
cam3 = cam3_image_B0
cam4a = cam4a_image_C0F0
cam4b = cam4b_image_C0F0
cam5 = cam5_image_B0
cam6 = cam6_image
cam7 = cam7_image_C0F0
cam_titles.play animation: :show_stage
$camera_active = cam1a
$camera_started = false
#cam motion
$direction = :right
$moving = true
#cam update flag
$animatronic_movement_flag = true

#   Power
$power = 100
$cooldownPower = Time.now
#outage cooldown
$cooldownOutage = Time.now

#           MENU
def menu(menu_newgame,menu_customizenight, menu_arrows)
    menuMMove(menu_newgame,menu_customizenight,menu_arrows)
end
#Sets gamestates and brings forth menu assets
def menuEnter(menu_freddy,menu_static,menu_title,menu_newgame,menu_arrows,menu_customizenight)
    $player = true
    $menu_started = true
    $game_started = false
    $custom_started = false
    menu_freddy.z = 1
    menu_static.z = 3
    menu_title.z = 2
    menu_newgame.z = 2
    menu_arrows.z = 2
    menu_customizenight.z = 2
    random_menu_freddy(menu_freddy)
    menu_static.play animation: :anim
end
#Sets menu gamestate to false and pushes everything of the menu back
def menuExit(menu_freddy,menu_static,menu_title,menu_newgame,menu_arrows,menu_customizenight)
    $menu_started = false
    menu_freddy.z = 0
    menu_static.z = 0
    menu_title.z = 0
    menu_newgame.z = 0
    menu_arrows.z = 0
    menu_customizenight.z = 0
end
#Adds an arrow next to the options and removes it if the mouse isn't hovering any options
def menuMMove(menu_newgame,menu_customizenight, menu_arrows)
    on:mouse_move do |event|
        if menu_newgame.contains?(event.x, event.y) && $menu_started == true
            menu_arrows.x = menu_newgame.x - 60
            menu_arrows.y = menu_newgame.y + 12
            menu_arrows.z = 2
    
        elsif menu_customizenight.contains?(event.x, event.y) &&  $menu_started == true
            menu_arrows.x = menu_customizenight.x - 60
            menu_arrows.y = menu_customizenight.y + 12
            menu_arrows.z = 2
        else
            menu_arrows.remove
        end
    end
end
#function looping itself to randomly play an animation of the menu background
def random_menu_freddy(menu_freddy)
    
    x = rand(1..3)
    case x
    when 1
        menu_freddy.play animation: :anim1 do
            random_menu_freddy(menu_freddy)
        end
    when 2
        menu_freddy.play animation: :anim2 do
            random_menu_freddy(menu_freddy)
        end
    when 3
        menu_freddy.play animation: :anim3 do
            random_menu_freddy(menu_freddy)
        end
    end
end
#creates a black box and uses a flicker effect to transition from the menu to the Office and displaying the current night ( inspiration the function transition)
def transitionEnterOffice(flicker, nights, current_night)
    flicker.z = 100
    box = Rectangle.new(
        width: 1920, height: 1080,
        x:0 , y: 0, z: 10,
        color: [0,0,0, 1]
    )
    flicker.play animation: :anim do
        nightEnterOffice(nights, current_night)
        nights.z = 10
        flicker.z = 0
        Thread.new do
            sleep(3)
            flicker.z = 100
            flicker.play animation: :anim do
                box.remove
                nights.z = 0
                flicker.z = 0
                $game_started = true
            end
        end
    end 
end
#does the same as transitionEnterOffice but play an animation of a clock going from 5am to 6am instead of showing the current night ( inspiration the function transition)
def transitionExitOffice(flicker, transitionClock)
    flicker.z = 100
    box = Rectangle.new(
        width: 1920, height: 1080,
        x:0 , y: 0, z: 10,
        color: [0,0,0, 1]
    )
    flicker.play animation: :anim do
        flicker.z = 0
        transitionClock.z = 10
        transitionClock.play animation: :anim
        Thread.new do
            sleep(5)
            flicker.z = 100
            flicker.play animation: :anim do
                box.remove
                flicker.z = 0
                transitionClock.z = 0
                $game_started = false
            end
        end
    end 
end
#creates a black box and uses a flicker effect to make a transition ( CREATED BY CHAT GPT)
def transition(flicker)
    flicker.z = 100
    box = Rectangle.new(
        width: 1920, height: 1080,
        x:0 , y: 0, z: 10,
        color: [0,0,0, 1]
    )
    flicker.play animation: :anim do
        flicker.z = 0
        Thread.new do
            sleep(3)
            flicker.z = 100
            flicker.play animation: :anim do
                box.remove
                flicker.z = 0
            end
        end
    end 
end
#plays an animation depending what current_night is(1-7)
def nightEnterOffice(nights, current_night)
    case current_night
    when 1
        nights.play animation: :night1
    when 2
        nights.play animation: :night2
    when 3
        nights.play animation: :night3
    when 4
        nights.play animation: :night4
    when 5
        nights.play animation: :night5
    when 6
        nights.play animation: :night6
    when 7
        nights.play animation: :night7
    end
end

#           OFFICE
#sets global variables of gamestates and the game timer and brings forth game assets in it's starting position
def officeEnter(fan,office_room,button_R00,button_R01,button_R10,button_R11,button_L00,button_L01,button_L10,button_L11,office_lightR,office_lightL,office_doorR,office_doorsR,office_doorL,office_doorsL, camera_button, clock, usage, text_power)
    $menu_started = false
    $custom_started = false
    $game_time = Time.now
    fan.z = 2
    fan.play
    clock.z = 10
    usage.z = 10
    text_power.z = 10
    office_room.z = 1
    camera_button.z = 9
    button_R00.z = 0
    button_R01.z = 0
    button_R10.z = 0
    button_R11.z = 0
    button_L00.z = 0
    button_L01.z = 0
    button_L10.z = 0
    button_L11.z = 0
    $buttonL_active.z = 5
    $buttonR_active.z = 5
    office_lightR.z = 0
    office_lightL.z = 0
    office_doorR.z = 0
    office_doorsR.z = 0
    office_doorL.z = 0
    office_doorsL.z = 0
end
#sets global variables of gamestates and pushes back every in-game asset
def officeExit(fan,office_room,button_R00,button_R01,button_R10,button_R11,button_L00,button_L01,button_L10,button_L11,office_lightR,office_lightL,office_doorR,office_doorsR,office_doorL,office_doorsL, camera_button, clock, usage, text_power)
    $game_started = false
    $camera_started = false
    fan.z = 0
    office_room.z = 0
    clock.z = 0
    usage.z = 0
    text_power.z = 0
    camera_button.z = 0
    button_R00.z = 0
    button_R01.z = 0
    button_R10.z = 0
    button_R11.z = 0
    button_L00.z = 0
    button_L01.z = 0
    button_L10.z = 0
    button_L11.z = 0
    $buttonL_active.z = 0
    $buttonR_active.z = 0
    office_lightR.z = 0
    office_lightL.z = 0
    office_doorR.z = 0
    office_doorsR.z = 0
    office_doorL.z = 0
    office_doorsL.z = 0
end

#CLOCK
#change the clock-sprite sheet depending on game_time( 1 hour = 85 seconds)
def time(clock)
    t = Time.now
    if t - $game_time >= (6*85)
        $player = false
    elsif t - $game_time >= (5*85)
        clock.play animation: :am5
    elsif t - $game_time >= (4*85)
        clock.play animation: :am4
    elsif t - $game_time >= (3*85)
        clock.play animation: :am3
    elsif t - $game_time >= (2*85)
        clock.play animation: :am2
    elsif t - $game_time >= (1*85)
        clock.play animation: :am1
    else
        clock.play animation: :am12
    end
end

#BUTTONS
#opens or closes door depending on the buttons apperance
def doorAnim(doors, door, button_active, button_00, button_01, button_10, button_11)
    if button_active == button_10 || button_active == button_11
        doors.z = 3
        doors.play animation: :close do
            door.z = 3
        end
    else 
        door.z = 0
        doors.play animation: :open
    end

end
#Checks if the corresponding animatronic is standing in the door way and plays an animation ontop of the "office-background"
def hallwayAnim(animatronic, lights, button_active, button_00, button_01, button_10, button_11)
    if button_active == button_01 || button_active == button_11
        #IF ANIMATRONICS ARE AT THE DOOR IF STATEMENT(anim1 or anim0)
        if animatronic['room'] == 'door'
            lights.play animation: :anim1, loop: true
            lights.z = 2
        elsif animatronic['room'] != 'door'
            lights.play animation: :anim0, loop: true
            lights.z = 2
        end
    else
        lights.z = 0
    end
end
#Changes the button appearance, sets cooldowns for the buttons and executes the function regarding where the button was pressed
def buttonClick(animatronic, event, button_00, button_01, button_10, button_11, office_light, doors, door)
    if $buttonL_active.contains?(event.x, event.y)
        $buttonL_active.z = 0
        $buttonL_active = buttonActiveIdentifier(event, $buttonL_active, button_00, button_01, button_10, button_11)
        $buttonL_active.z = 5
        if event.y > $buttonL_active.y + $buttonR_active.height / 2
            hallwayAnim(animatronic, office_light, $buttonL_active, button_00, button_01, button_10, button_11)
        elsif event.y < $buttonL_active.y + $buttonR_active.height / 2  && Time.now - $cooldownDoor > 0.35
            doorAnim(doors, door, $buttonL_active, button_00, button_01, button_10, button_11)
            $cooldownDoor = Time.now
        end
    elsif $buttonR_active.contains?(event.x, event.y)
        $buttonR_active.z = 0
        $buttonR_active = buttonActiveIdentifier(event, $buttonR_active, button_00, button_01, button_10, button_11)
        $buttonR_active.z = 5
        if event.y > $buttonR_active.y + $buttonR_active.height / 2
            hallwayAnim(animatronic, office_light, $buttonR_active, button_00, button_01, button_10, button_11) 
        elsif event.y < $buttonR_active.y + $buttonR_active.height / 2  && Time.now - $cooldownDoor > 0.35
            doorAnim(doors, door, $buttonR_active, button_00, button_01, button_10, button_11)
            $cooldownDoor = Time.now
        end
    end
    
end
#Checks the the active button and returns what the next button will be
def buttonActiveIdentifier(event, button_active, button_00, button_01, button_10, button_11)
    if event.y > button_active.y + button_active.height / 2
        if button_00 == button_active
            return button_01
        elsif button_01 == button_active
            return button_00
        elsif button_10 == button_active
            return button_11
        elsif button_11 == button_active
            return button_10
        end
    elsif event.y > button_active.y - button_active.height / 2 && Time.now - $cooldownDoor > 0.35
        if button_00 == button_active
            return button_10
        elsif button_10 == button_active
            return button_00
        elsif button_01 == button_active
            return button_11
        elsif button_11 == button_active
            return button_01
        end
    else
        return button_active    
    end
end
#ROOM
#remaps the value of the cursor coordinates and returns the mapped value to change the office-backgrounds x-coordinate ( THE MATH IN FUNCTION WAS DONE BY CHAT GPT)
def officeMovementRemap(value)
    if value.between?(0, 550)
        # Calculate the ratio of the original range
        ratio = value.to_f / 550.0
        # Apply the ratio to the new range
        mapped_value = (1 - ratio) * (20 - 1) + 1
    elsif value.between?(1430, 1980)
        # Calculate the ratio of the original range
        ratio = (value - 1430).to_f / (1980 - 1430)
        # Apply the ratio to the new range
        mapped_value = (1 - ratio) * (-1 - (-20)) + (-20)
    end
    return mapped_value
end
#If the office-background is outside the screen creating a black bar this will put it back into place
def officeRoomBorder(office_room)
    if office_room.x < -594
        office_room.x = -594
    end
    if office_room.x > 0
        office_room.x = 0
    end
end
#every thing inside the office has a position and will update depending on the office-background's position
def officeTangents(office_room, fan, office_lightL, office_lightR, office_doorsL, office_doorL, office_doorsR, office_doorR)
    $buttonL_active.x = office_room.x + 2
    $buttonR_active.x = office_room.x + 2380
    fan.x = office_room.x + 1255
    office_lightL.x = office_room.x
    office_lightR.x = office_room.x + 1689
    office_doorsL.x = office_room.x + 155
    office_doorL.x = office_room.x + 155
    office_doorsR.x = office_room.x + 2044
    office_doorR.x = office_room.x + 2044
end
#Gets cursor position and preforms functions if the cursor is to the left or the right of the screen
def officeMovement(office_room, fan, office_lightL, office_lightR, office_doorsL, office_doorL, office_doorsR, office_doorR, outage) 
    x_pos = get :mouse_x
    if x_pos < 550 || x_pos > 1430
        office_room.x += officeMovementRemap(x_pos)
        officeRoomBorder(office_room)
        outage.x = office_room.x
        officeTangents(office_room, fan, office_lightL, office_lightR, office_doorsL, office_doorL, office_doorsR, office_doorR)
    end
end

#           ANIMATRONICS
#Move the corresponding animatronic and conditionally plays jumpscares and sets the animatronic movement flag
def bonnieMovement(hash, jumpscare, door)
    current_time = Time.now
    # Calculate the movement interval
    interval = -1.2105 * hash['difficulty'] + 31.2105
    if hash['room'] == 'door'
        interval = -0.2105263 * hash['difficulty'] + 12.2105263
        if (current_time - hash['move']) >= interval && door.z != 3
            kill(jumpscare)
        elsif (current_time - hash['move']) >= interval && door.z == 3
            hash['room'] = 'west hall B'
            p "bonnie: #{hash['room']}"
            hash['move'] = current_time
            $animatronic_movement_flag = true
        end

    elsif (current_time - hash['move']) >= interval
      x = rand(1..100)
      if x < ((0.52641 * hash['difficulty'])+39.473)
        
        if hash['room'] == 'show stage'
            hash['room'] = 'back stage'
        elsif hash['room'] == 'back stage'
            hash['room'] = 'dining area'
        elsif hash['room'] == 'dining area'
            hash['room'] = 'west hall A'
        elsif hash['room'] == 'west hall A'
            hash['room'] = 'supply closet'
        elsif hash['room'] == 'supply closet'
            hash['room'] = 'door'
        elsif hash['room'] == 'west hall B'
            if x < 35 #35% chance of moving behind the door kinda
                hash['room'] = 'door'
            else
                hash['room'] = 'back stage'
            end
        end
  
        p "bonnie: #{hash['room']}"
        end
        hash['move'] = current_time
        $animatronic_movement_flag = true
    end 
end
def chicaMovement(hash, jumpscare, door)
    current_time = Time.now
    # Calculate the movement interval
    interval = -1.2105 * hash['difficulty'] + 33.2105
    if hash['room'] == 'door'
        interval = -0.2105263 * hash['difficulty'] + 12.2105263
        if (current_time - hash['move']) >= interval && door.z != 3
            kill(jumpscare)
        elsif (current_time - hash['move']) >= interval && door.z == 3
            hash['room'] = 'east hall B'
            p "chica: #{hash['room']}"
            hash['move'] = current_time
            $animatronic_movement_flag = true
        end

    elsif (current_time - hash['move']) >= interval
        x = rand(1..100)
        if x < ((0.52641 * hash['difficulty'])+39.473)
        #events for future use
            if hash['room'] == 'show stage'
                hash['room'] = 'dining area'
            elsif hash['room'] == 'dining area'
                hash['room'] = 'restrooms'
            elsif hash['room'] == 'restrooms'
                hash['room'] = 'kitchen'
            elsif hash['room'] == 'kitchen'
                hash['room'] = 'east hall A'
            elsif hash['room'] == 'east hall A'
                hash['room'] = 'door'
            elsif hash['room'] == 'east hall B'
                if x < 20
                    hash['room'] = 'door'
                else
                    hash['room'] = 'dining area'
                end
            end
            p "chica: #{hash['room']}"
        end
    hash['move'] = current_time
    $animatronic_movement_flag = true
    end 
end
def freddyMovement(hash, bonnie, chica, jumpscare, door, cam4b)
    current_time = Time.now
    interval = -1.2105 * hash['difficulty'] + 42.2105
    if hash['room'] == 'east hall B'
        if (current_time - hash['move']) >= 15
            hash['room'] = 'dining area'
            puts "freddy: #{hash['room']}"
            hash['move'] = current_time
            $animatronic_movement_flag = true
        elsif door.z != 3 && $camera_started
                interval = -0.368421 * hash['difficulty'] + 14.368421
            if  $camera_active != cam4b && (current_time - hash['move']) >= interval
                hash['room'] = 'office'
                puts "freddy: #{hash['room']}"
                $animatronic_movement_flag = true
            end
        end
    elsif hash['room'] == 'office'
        if $camera_started == false
            kill(jumpscare)
        end
    elsif (current_time - hash['move']) >= interval
        x = rand(1..100)
        if x < ((0.52641 * hash['difficulty'])+39.473)
            if hash['room'] == 'show stage' && bonnie['room'] != 'show stage' && chica['room'] != 'show stage'
                hash['room'] = 'dining area'
            elsif hash['room'] == 'dining area'
                hash['room'] = 'restrooms'
            elsif hash['room'] == 'restrooms'
                hash['room'] = 'kitchen'
            elsif hash['room'] == 'kitchen'
                hash['room'] = 'east hall A'
            elsif hash['room'] == 'east hall A'
                hash['room'] = 'east hall B'
            end
            puts "freddy: #{hash['room']}"
            hash['move'] = current_time
            $animatronic_movement_flag = true
        end
    end 
end
#Will also play an animation on the cams
def foxyMovement(hash, jumpscare, door, running_animation)
    current_time = Time.now
    interval = -1.2105 * hash['difficulty'] + 50.2105
    if hash['room'] == 'stage 3'
        interval = -0.368421 * hash['difficulty'] + 15.368421
        
        if hash['sight'] == true || current_time - hash['move'] >= interval
            running_animation.play animation: :anim do
                if door.z == 3
                    hash['room'] = 'stage 0'
                    puts "foxy: #{hash['room']}"
                    hash['move'] = current_time
                    $animatronic_movement_flag = true
                else
                    if jumpscare.z != 99
                        foxyKill(jumpscare)
                    end
                end
            end
        end
    elsif (current_time - hash['move']) >= interval
        x = rand(1..100)
        if x < ((0.52641 * hash['difficulty'])+ 25.473)
            if hash['room'] == 'stage 0'
                hash['room'] = 'stage 1'
            elsif hash['room'] == 'stage 1'
                hash['room'] = 'stage 2'
            elsif hash['room'] == 'stage 2'
                hash['room'] = 'stage 3'
            end
            puts "foxy: #{hash['room']}"
            hash['move'] = current_time
            $animatronic_movement_flag = true
        end
    end 
end
#Kills the player by playing a jumpscare and setting the player to false resulting in game reset
def kill(jumpscare)
    if $power >= 0
        jumpscare.z = 99
        $game_started = false
        jumpscare.play animation: :anim do
            jumpscare.z = 0
            $player = false
        end
    end
end
#Same as kill but will set the jumpscare x to a different number
def foxyKill(jumpscare)
    if $power >= 0
        jumpscare.z = 99
        jumpscare.x = -100
        $game_started = false
        jumpscare.play animation: :anim do
            jumpscare.z = 0
            $player = false
        end
    end
end
#Plays the outage animation and after plays a jumpscare kill 
def outageKill(jumpscare, outage_sprite)
    if $power < 0
        outage_sprite.z = 99
        outage_sprite.play animation: :anim do
            
            if Time.now - $game_time >= (6*85)
                outage_sprite.z = 0
                $game_started = false
                $player = false
                $power = 100
            else
                if $power < 0
                    jumpscare.z = 100
                    jumpscare.play animation: :anim do
                        outage_sprite.z = 0
                        jumpscare.z = 0
                        $game_started = false
                        $player = false
                        $power = 100
                    end
                end
            end
        end
    end
end
#           CAMERAS
#Brings forth the whole camera map, the active cam and plays the static effect
def cameraEnter(titles, static, map, border, greenbox, cam1a, cam1b, cam1c, cam2a, cam2b, cam3, cam4a, cam4b, cam5, cam6, cam7)
    $camera_started = true
    $camera_active.z = 6
    static.z = 12
    static.play animation: :anim
    titles.z = 10
    map.z = 10
    border.z = 10
    greenbox.z = 11
    cam1a.z = 12
    cam1b.z = 12
    cam1c.z = 12
    cam2a.z = 12
    cam2b.z = 12
    cam3.z = 12
    cam4a.z = 12
    cam4b.z = 12
    cam5.z = 12
    cam6.z = 12
    cam7.z = 12
end
#All camera related back
def cameraExit(titles, static, map, border, greenbox, cam1a, cam1b, cam1c, cam2a, cam2b, cam3, cam4a, cam4b, cam5, cam6, cam7)
    $camera_active.z = 0
    static.z = 0
    static.stop animation: :anim
    map.z = 0
    titles.z = 0
    border.z = 0
    greenbox.z = 0
    cam1a.z = 0
    cam1b.z = 0
    cam1c.z = 0
    cam2a.z = 0
    cam2b.z = 0
    cam3.z = 0
    cam4a.z = 0
    cam4b.z = 0
    cam5.z = 0
    cam6.z = 0
    cam7.z = 0
    $camera_started = false
end
#Changes greenboxes coordinates, switches the active camera and switches the camera title in the corner
def mapClick (event, map, title, greenbox, flicker, cam1a, cam1b, cam1c, cam2a, cam2b, cam3, cam4a, cam4b, cam5, cam6, cam7)
    if map.contains?(event.x, event.y)
        #CAM 1A
        if 1457 <= event.x && event.x <= 1545 && 416 <= event.y  && event.y <= 474
            greenbox.x = 1453
            greenbox.y = 415
            cameraSwitch(cam1a, flicker)
            title.play animation: :show_stage

        #CAM 1B
        elsif 1448 <= event.x && event.x <= 1540 && 500 <= event.y && event.y <= 560
            greenbox.x = 1446
            greenbox.y = 500
            cameraSwitch(cam1b, flicker)
            title.play animation: :dining_area
        #CAM 1C
        elsif 1390 <= event.x && event.x <= 1477 && 617 <= event.y && event.y <= 676
            greenbox.x = 1385
            greenbox.y = 616
            cameraSwitch(cam1c, flicker)
            title.play animation: :pirate_cove
        #CAM 2A
        elsif 1477 <= event.x && event.x <= 1565 && 776 <= event.y && event.y <= 833
            greenbox.x = 1475
            greenbox.y = 775
            cameraSwitch(cam2a, flicker)
            title.play animation: :west_hall
        #CAM 2B
        elsif 1412 <= event.x && event.x <= 1501 && 860 <= event.y  && event.y <= 916
            greenbox.x = 1410
            greenbox.y = 858
            cameraSwitch(cam2b, flicker)
            title.play animation: :west_hall
        #CAM 3
        elsif 1331 <= event.x && event.x <= 1420 && 758 <= event.y && event.y <= 817
            greenbox.x = 1329
            greenbox.y = 757
            cameraSwitch(cam3, flicker)
            title.play animation: :supply_closet
        #CAM 4A
        elsif 1574 <= event.x && event.x <= 1664 && 777 <= event.y && event.y <= 834
            greenbox.x = 1572
            greenbox.y = 775
            cameraSwitch(cam4a, flicker)
            title.play animation: :east_hall
        #CAM 4B
        elsif 1628 <= event.x && event.x <= 1718 && 859 <= event.y && event.y <= 919
            greenbox.x = 1626
            greenbox.y = 857
            cameraSwitch(cam4b, flicker)
            title.play animation: :east_hall
        #CAM 5
        elsif 1320 <= event.x && event.x <= 1410 && 524 <= event.y && event.y <= 584
            greenbox.x = 1319
            greenbox.y = 523
            cameraSwitch(cam5, flicker)
            title.play animation: :backstage
        #CAM 6
        elsif 1781 <= event.x && event.x <= 1871 && 739 <= event.y && event.y <= 799
            greenbox.x = 1778
            greenbox.y = 736
            cameraSwitch(cam6, flicker)
            title.play animation: :kitchen
        #CAM 7
        elsif 1780 <= event.x && event.x <= 1870 && 502 <= event.y && event.y <= 562
            greenbox.x = 1778
            greenbox.y = 500
            cameraSwitch(cam7, flicker)
            title.play animation: :restrooms
        end
    end
end
#Moves the active camera left to right waiting 2 seconds before switching direction
def cameraMovement(camera_active, cam6)
    if camera_active != cam6
        if $moving
            case $direction
            when :right
                camera_active.x -= 2
                if camera_active.x <= -(2400 - 1920)
                    $moving = false 
                    $cooldownCams = Time.now
                end
            when :left
                camera_active.x += 2
                if camera_active.x >= 0
                    $moving = false
                    $cooldownCams = Time.now
                end
            end
        else
            if Time.now - $cooldownCams >= 2
                $moving = true
                if $direction == :right
                    $direction = :left 
                elsif $direction == :left
                    $direction = :right
                end
            end
        end
    end
end
#Plays the flicker effect and switches the active camera
def cameraSwitch(next_camera, flicker)
    flicker.z = 10
    $camera_active.z = 0
    $camera_active = next_camera
    $camera_active.z = 6
    flicker.play animation: :anim do
        flicker.z = 0
    end
end
#Confirms the active camera is correct( is called when opening the camera )
def cameraConfirm(greenbox, cam1a, cam1b, cam1c, cam2a, cam2b, cam3, cam4a, cam4b, cam5, cam6, cam7)
    if greenbox.x == 1453
        $camera_active = cam1a
    elsif greenbox.x == 1446
        $camera_active = cam1b
    elsif greenbox.x == 1385
        $camera_active = cam1c
    elsif greenbox.x == 1475
        $camera_active = cam2a
    elsif greenbox.x == 1410
        $camera_active = cam2b
    elsif greenbox.x == 1329
        $camera_active = cam3
    elsif greenbox.x == 1572
        $camera_active = cam4a
    elsif greenbox.x == 1626
        $camera_active = cam4b
    elsif greenbox.x == 1319
        $camera_active = cam5
    elsif greenbox.x == 1778 && greenbox.y == 736
        $camera_active = cam6
    elsif greenbox.x == 1778 && greenbox.y == 500
        $camera_active = cam7
    end
end
#Checks if a cam that can see foxy is true
def foxyVision(foxy, cam2a, cam1c)
    if $camera_active == cam2a || $camera_active == cam1c
        if $camera_started
            foxy['sight'] = true
        else
            foxy['sight'] = false
        end
    end
end

#CAM IMAGES 
#   Checks animatronic positions and returns the correct camera image , for all below ( some times uses random numbers to create easter eggs )
def cam1aUpdate(bonnie,chica,freddy, b1c1f1_1, b1c1f1_2, b0c1f1, b1c0f1, b0c0f1, b0c0f0)
    if bonnie['room'] == 'show stage' && chica['room'] == 'show stage' && freddy['room'] == 'show stage'
        x = rand(1..10)
        if x >= 3
            return b1c1f1_1
        else
            return b1c1f1_2
        end
    elsif bonnie['room'] != 'show stage' && chica['room'] == 'show stage' && freddy['room'] == 'show stage'
        return b0c1f1
    elsif bonnie['room'] == 'show stage' && chica['room'] != 'show stage' && freddy['room'] == 'show stage'
        return b1c0f1
    elsif bonnie['room'] != 'show stage' && chica['room'] != 'show stage' && freddy['room'] == 'show stage'
        return b0c0f1
    elsif bonnie['room'] != 'show stage' && chica['room'] != 'show stage' && freddy['room'] != 'show stage'
        return b0c0f0
    end
end
def cam1bUpdate(bonnie,chica,freddy, b1c1f1, b1c0f0, b1c1f0, b1c0f1, b0c1f0, b0c1f1, b0c0f1, b0c0f0)
    if bonnie['room'] == 'dining area' && chica['room'] == 'dining area' && freddy['room'] == 'dining area'
        return b1c1f1
    elsif bonnie['room'] == 'dining area' && chica['room'] != 'dining area' && freddy['room'] != 'dining area'
        return b1c0f0
    elsif bonnie['room'] == 'dining area' && chica['room'] == 'dining area' && freddy['room'] != 'dining area'
        return b1c1f0
    elsif bonnie['room'] == 'dining area' && chica['room'] != 'dining area' && freddy['room'] == 'dining area'
        return b1c0f1
    elsif bonnie['room'] != 'dining area' && chica['room'] == 'dining area' && freddy['room'] != 'dining area'
        return b0c1f0
    elsif bonnie['room'] != 'dining area' && chica['room'] == 'dining area' && freddy['room'] == 'dining area'
        return b0c1f1
    elsif bonnie['room'] != 'dining area' && chica['room'] != 'dining area' && freddy['room'] == 'dining area'
        return b0c0f1
    elsif bonnie['room'] != 'dining area' && chica['room'] != 'dining area' && freddy['room'] != 'dining area'
        return b0c0f0
    end
end
def cam1cUpdate(foxy, f0, f1, f2, f3)
    if foxy['room'] == 'stage 0'
        return f0
    elsif foxy['room'] == 'stage 1'
        return f1
    elsif foxy['room'] == 'stage 2'
        return f2
    elsif foxy['room'] == 'stage 3'
        return f3
    end
end
def cam2aUpdate(bonnie, foxy, b1, b0, f1)
    if foxy['room'] == 'stage 3'
        return f1
    elsif bonnie['room'] == 'west hall A'
        return b1
    elsif bonnie['room'] != 'west hall A'
        return b0
    end
end
def cam2bUpdate(bonnie, b1_1, b1_2, b0_1, b0_2)
    if bonnie['room'] == 'west hall B'
        x = rand(1..10)
        if x >= 3
            return b1_1
        else
            return b1_2
        end
    else
        x = rand(1..10)
        if x >= 9
            return b0_1
        else 
            return b0_2
        end
    end
end
def cam3Update(bonnie, b1, b0)
    if bonnie['room'] == 'supply closet'
        return b1
    else
        return b0
    end
end
def cam4aUpdate(chica, freddy, c1f1, c1f0, c0f1, c0f0)
    if chica['room'] == 'east hall A' && freddy['room'] == 'east hall A'
        return c1f1
    elsif chica['room'] == 'east hall A' && freddy['room'] != 'east hall A'
        return c1f0
    elsif chica['room'] != 'east hall A' && freddy['room'] == 'east hall A'
        return c0f1
    elsif chica['room'] != 'east hall A' && freddy['room'] != 'east hall A'
        return c0f0
    end
end
def cam4bUpdate(chica, freddy, f1, c1f0_1, c1f0_2, c1f0_3, c0f0)
    if freddy['room'] == 'east hall B'
        return f1
    elsif chica['room'] == 'east hall B' && freddy['room'] != 'east hall B'
        x = rand(1..3)
        case x
        when 1
            return c1f0_1
        when 2
            return c1f0_2
        when 3
            return c1f0_3
        end
    elsif chica['room'] != 'east hall B' && freddy['room'] != 'east hall B'
        return c0f0
    end
end
def cam5Update(bonnie, b0, b1_1, b1_2)
    if bonnie['room'] == 'back stage'
        x = rand(1..10)
        if x <= 2
            return b1_2
        else
            return b1_1
        end
    else
        return b0
    end
end
def cam7Update(chica, freddy, c1f1, c1f0, c0f1, c0f0)
    if chica['room'] == 'restrooms' && freddy['room'] == 'restrooms'
        return c1f1
    elsif chica['room'] == 'restrooms' && freddy['room'] != 'restrooms'
        return c1f0
    elsif chica['room'] != 'restrooms' && freddy['room'] == 'restrooms'
        return c0f1
    elsif chica['room'] != 'restrooms' && freddy['room'] != 'restrooms'
        return c0f0
    end
end
#           POWER
#checks doors, lights and camera and returns how much the player is currently using the power storage
def usageValueUpdate(doorL, doorR, lightsL, lightsR)
    usage = 0
    if doorL.z == 3
        usage += 1
    end
    if doorR.z == 3
        usage += 1
    end
    if lightsL.z == 2
        usage += 1
    end
    if lightsR.z == 2
        usage += 1
    end
    if $camera_started
        usage += 1
    end
    return usage
end
#Changes the usage sprite sheet depending on the usage value
def usageImageUpdate(usageValue, usageImage)
    case usageValue
    when 0
        usageImage.play animation: :zero
    when 1
        usageImage.play animation: :one
    when 2
        usageImage.play animation: :two
    when 3
        usageImage.play animation: :three
    when 4
        usageImage.play animation: :four
    when 5
        usageImage.play animation: :five
    end
end
#Drains the power and update the text
def powerdrain(text, usage)
    if Time.now - $cooldownPower >= 0.1
        drain = 0.010805 * usage + 0.010805
        $power -= drain
        text.text = "Power  left: #{$power.to_i} %"
        $cooldownPower = Time.now
    end
    return $power
end

#                           GAME
#Starts menu
menuEnter(menu_freddy,menu_static,menu_title,menu_newgame,menu_arrows,menu_customizenight)
menu(menu_newgame,menu_customizenight,menu_arrows)

#   MENU
#menu click
on :mouse_down do |event|
    if $menu_started == true
        if menu_newgame.contains?(event.x, event.y)
            #Starts game and exits menu
            menuExit(menu_freddy,menu_static,menu_title,menu_newgame,menu_arrows,menu_customizenight)
            officeEnter(fan,office_room,button_R00,button_R01,button_R10,button_R11,button_L00,button_L01,button_L10,button_L11,office_lightR,office_lightL,office_doorR,office_doorsR,office_doorL,office_doorsL, camera_button, clock, usageImage, text_power)
            transitionEnterOffice(flicker, transitionClockNight, current_night)
        


        elsif menu_customizenight.contains?(event.x, event.y)
            menuExit(menu_freddy,menu_static,menu_title,menu_newgame,menu_arrows,menu_customizenight)
            #customEnter function (not implemented yet)
        end
    end
end

#   OFFICE
update do
    #room and animatronics
    if $game_started == true
        #update usage
        usage = usageValueUpdate(office_doorL, office_doorR, office_lightL, office_lightR)
        #update usage image
        usageImageUpdate(usage, usageImage)
        #power value is updated
        $power = powerdrain(text_power, usage)
        officeMovement(office_room, fan, office_lightL, office_lightR, office_doorsL, office_doorL, office_doorsR, office_doorR, outage)
        bonnieMovement(bonnie, jumpscare_bonnie, office_doorL)
        chicaMovement(chica, jumpscare_chica, office_doorR)
        freddyMovement(freddy, bonnie, chica, jumpscare_freddy, office_doorR, cam4b)
        foxyMovement(foxy, jumpscare_foxy, office_doorL, cam2a_sprite_F1)
        foxyVision(foxy, cam2a, cam1c)
        time(clock)
        #opens possibily closed doors before playing outage kill
        if $power < 0 && $player
            if Time.now - $cooldownOutage >= 5
                if office_doorL.z == 3
                    office_doorsL.z = 3
                    office_doorL.z = 0
                elsif office_doorsR.z == 3
                    office_doorsL.z = 0
                end
                if office_doorR.z == 3
                    office_doorsR.z = 3
                    office_doorR.z = 0
                elsif office_doorsR.z == 3 
                    office_doorsR.z = 0
                end
                $cooldownOutage = Time.now
            end
            office_doorsL.play animation: :open
            office_doorsR.play animation: :open do
                office_doorsL.z = 0
                office_doorsR.z = 0
                outageKill(jumpscare_freddy2, outage)
            end 
        end
    end
    #camera movement
    cameraMovement($camera_active, cam6)
    
    #camera update: Updates everycamera once the animatronic movement flag is true and checks active cam incase
    # the flicker effect needs to be played and then updates the rest of the cam images and turns of the flag
    if $animatronic_movement_flag
        #CAM 1A
        if $camera_active == cam1a && $camera_started
            cam1a = cam1aUpdate(bonnie, chica, freddy, cam1a_image_B1C1F1_1, cam1a_image_B1C1F1_2, cam1a_image_B0C1F1, cam1a_image_B1C0F1, cam1a_image_B0C0F1, cam1a_image_B0C0F0)
            if cam1a != $camera_active
                cameraSwitch(cam1a, flicker)
            end

        #CAM 1B
        elsif $camera_active == cam1b && $camera_started
            cam1b = cam1bUpdate(bonnie,chica,freddy, cam1b_image_B1C1F1, cam1b_image_B1C0F0, cam1b_image_B1C1F0,cam1b_image_B1C0F1, cam1b_image_B0C1F0, cam1b_image_B0C1F1, cam1b_image_B0C0F1, cam1b_image_B0C0F0)
            if cam1b != $camera_active
                cameraSwitch(cam1b, flicker)
            end
        
        #CAM 1C
        elsif $camera_active == cam1c && $camera_started
            cam1c = cam1cUpdate(foxy, cam1c_image_F0, cam1c_image_F1, cam1c_image_F2, cam1c_image_F3)
            if cam1c != $camera_active
                cameraSwitch(cam1c, flicker)
            end

        #CAM 2A
        elsif $camera_active == cam2a && $camera_started
            cam2a = cam2aUpdate(bonnie, foxy, cam2a_image_B1, cam2a_image_B0, cam2a_sprite_F1)
            if cam2a != $camera_active
                cameraSwitch(cam2a, flicker)
            end

        #CAM 2B
        elsif $camera_active == cam2b && $camera_started
            cam2b = cam2bUpdate(bonnie, cam2b_image_B1_1, cam2b_image_B1_2, cam2b_image_B0_1, cam2b_image_B0_2)
            if cam2b != $camera_active
                cameraSwitch(cam2b, flicker)
            end

        #CAM 3
        elsif $camera_active == cam3 && $camera_started
            cam3 = cam3Update(bonnie, cam3_image_B1, cam3_image_B0)
            if cam3 != $camera_active
                cameraSwitch(cam3, flicker)
            end

        #CAM 4A
        elsif $camera_active == cam4a && $camera_started
            cam4a = cam4aUpdate(chica, freddy, cam4a_image_C1F1, cam4a_image_C1F0, cam4a_image_C0F1, cam4a_image_C0F0)
            if cam4a != $camera_active
                cameraSwitch(cam4a, flicker)
            end

        #CAM 4B
        elsif $camera_active == cam4b && $camera_started
            cam4b = cam4bUpdate(chica, freddy, cam4b_image_F1, cam4b_image_C1F0_1, cam4b_image_C1F0_2, cam4b_image_C1F0_3, cam4b_image_C0F0)
            if cam4b != $camera_active
                cameraSwitch(cam4b, flicker)
            end

        #CAM 5
        elsif $camera_active == cam5 && $camera_started
            cam5 = cam5Update(bonnie, cam5_image_B0, cam5_image_B1_1, cam5_image_B1_2)
            if cam5 != $camera_active
                cameraSwitch(cam5, flicker)
            end

        #CAM 7
        elsif $camera_active == cam7 && $camera_started
            cam7 = cam7Update(chica, freddy, cam7_image_C1F1, cam7_image_C1F0, cam7_image_C0F1, cam7_image_C0F0)
            if cam7 != $camera_active
                cameraSwitch(cam7, flicker)
            end
        end

        cam1a = cam1aUpdate(bonnie, chica, freddy, cam1a_image_B1C1F1_1, cam1a_image_B1C1F1_2, cam1a_image_B0C1F1, cam1a_image_B1C0F1, cam1a_image_B0C0F1, cam1a_image_B0C0F0)
        cam1b = cam1bUpdate(bonnie,chica,freddy, cam1b_image_B1C1F1, cam1b_image_B1C0F0, cam1b_image_B1C1F0,cam1b_image_B1C0F1, cam1b_image_B0C1F0, cam1b_image_B0C1F1, cam1b_image_B0C0F1, cam1b_image_B0C0F0)
        cam1c = cam1cUpdate(foxy, cam1c_image_F0, cam1c_image_F1, cam1c_image_F2, cam1c_image_F3)
        cam2a = cam2aUpdate(bonnie, foxy, cam2a_image_B1, cam2a_image_B0, cam2a_sprite_F1)
        cam2b = cam2bUpdate(bonnie, cam2b_image_B1_1, cam2b_image_B1_2, cam2b_image_B0_1, cam2b_image_B0_2)
        cam3 = cam3Update(bonnie, cam3_image_B1, cam3_image_B0)
        cam4a = cam4aUpdate(chica, freddy, cam4a_image_C1F1, cam4a_image_C1F0, cam4a_image_C0F1, cam4a_image_C0F0)
        cam4b = cam4bUpdate(chica, freddy, cam4b_image_F1, cam4b_image_C1F0_1, cam4b_image_C1F0_2, cam4b_image_C1F0_3, cam4b_image_C0F0)
        cam5 = cam5Update(bonnie, cam5_image_B0, cam5_image_B1_1, cam5_image_B1_2)
        cam7 = cam7Update(chica, freddy, cam7_image_C1F1, cam7_image_C1F0, cam7_image_C0F1, cam7_image_C0F0)
        $animatronic_movement_flag = false
    end
    # If player is false => win? or lose?
    if $player == false
        #Exits all in-game ui and enters menu
        cameraExit(cam_titles, static_cam, map, camera_border, greenbox, cam1a_button, cam1b_button, cam1c_button, cam2a_button, cam2b_button, cam3_button, cam4a_button, cam4b_button, cam5_button, cam6_button, cam7_button)
        officeExit(fan,office_room,button_R00,button_R01,button_R10,button_R11,button_L00,button_L01,button_L10,button_L11,office_lightR,office_lightL,office_doorR,office_doorsR,office_doorL,office_doorsL, camera_button, clock, usageImage, text_power)
        menuEnter(menu_freddy,menu_static,menu_title,menu_newgame,menu_arrows,menu_customizenight) #Starts menu screen
        menu(menu_newgame,menu_customizenight,menu_arrows)
        if Time.now - $game_time > (6*85)
            #Win
            transitionExitOffice(flicker, transitionClock5_6)
        else
            #Lose
            transition(flicker)
        end
        #Reset game variables(difficulty, buttons and cams)
        bonnie = {'room' => 'show stage', 'difficulty' => 5, 'move' => Time.now}
        freddy = {'room' => 'show stage', 'difficulty' => 5, 'move' => Time.now}
        chica =  {'room' => 'show stage', 'difficulty' => 5, 'move' => Time.now}
        foxy = {'room' => 'stage 0', 'difficulty' => 5, 'move' => Time.now}
        $buttonL_active = button_L00 
        $buttonR_active = button_R00
        cam1a = cam1a_image_B1C1F1_1
        cam1b = cam1b_image_B0C0F0
        cam1c = cam1c_image_F0
        cam2a = cam2a_image_B0
        cam2b = cam2b_image_B0_1
        cam3 = cam3_image_B0
        cam4a = cam4a_image_C0F0
        cam4b = cam4b_image_C0F0
        cam5 = cam5_image_B0
        cam6 = cam6_image
        cam7 = cam7_image_C0F0
        cam_titles.play animation: :show_stage
        $camera_active = cam1a
        $camera_started = false
        $power = 100
    end
end
#On mouse press checking if a button can be pressed and if the button was the left or right one
on :mouse_down do |event|
    if $game_started && $camera_started == false
        if $buttonL_active.contains?(event.x, event.y)
            buttonClick(bonnie, event, button_L00, button_L01, button_L10, button_L11, office_lightL, office_doorsL, office_doorL)
        elsif $buttonR_active.contains?(event.x, event.y)
            buttonClick(chica, event, button_R00, button_R01, button_R10, button_R11, office_lightR, office_doorsR, office_doorR)
        end
        
    end
end
#Cameras
#On mouse press checking if the camera is started enabling the camera ui to be used
on :mouse_down do |event|
    if $camera_started
        mapClick(event, map, cam_titles, greenbox, flicker, cam1a, cam1b, cam1c, cam2a, cam2b, cam3, cam4a, cam4b, cam5, cam6, cam7)
    end
end
#On mouse movement checks if the mouse hovered the cam button and closes or opens the cam and updates a cooldown
on :mouse_move do |event|
    if $game_started
        if camera_button.contains?(event.x, event.y) && Time.now - $cooldownCams > 0.7 && $camera_started == false
            camera_screen.z = 10
            camera_screen.play animation: :open do
                camera_screen.z = 0
                flicker.z = 10
                cameraConfirm(greenbox, cam1a, cam1b, cam1c, cam2a, cam2b, cam3, cam4a, cam4b, cam5, cam6, cam7)
                cameraEnter(cam_titles, static_cam, map, camera_border, greenbox, cam1a_button, cam1b_button, cam1c_button, cam2a_button, cam2b_button, cam3_button, cam4a_button, cam4b_button, cam5_button, cam6_button, cam7_button)
                flicker.play animation: :anim do
                    flicker.z = 0
                end
            end
            $cooldownCams = Time.now
            $camera_started = true
        elsif camera_button.contains?(event.x, event.y) && Time.now - $cooldownCams > 0.7 && $camera_started == true
            camera_screen.z = 10
            cameraExit(cam_titles, static_cam, map, camera_border, greenbox, cam1a_button, cam1b_button, cam1c_button, cam2a_button, cam2b_button, cam3_button, cam4a_button, cam4b_button, cam5_button, cam6_button, cam7_button)
            camera_screen.play animation: :close do
                camera_screen.z = 0
            end
            $cooldownCams = Time.now
            $camera_started = false
        end          
    end
end

#Close the game on Escape
on :key_down do |event|
    if event.key == 'escape'
        close
    end
end

#create app window
show