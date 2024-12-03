onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -height 45 -radix hexadecimal /tbadder/test/Index
add wave -noupdate -height 45 -radix hexadecimal /tbadder/DUT/Cin
add wave -noupdate -height 45 -radix hexadecimal /tbadder/DUT/A
add wave -noupdate -height 45 -radix hexadecimal /tbadder/DUT/B
add wave -noupdate -divider Responses
add wave -noupdate -height 45 -radix hexadecimal /tbadder/DUT/S
add wave -noupdate -height 45 -radix hexadecimal /tbadder/test/expected_S
add wave -noupdate -height 45 -radix hexadecimal /tbadder/DUT/Cout
add wave -noupdate -height 45 -radix hexadecimal /tbadder/test/expected_Cout
add wave -noupdate -height 45 -radix hexadecimal /tbadder/DUT/Ovfl
add wave -noupdate -height 45 -radix hexadecimal /tbadder/test/expected_Ovfl
add wave -noupdate -divider {Useless Shit}
add wave -noupdate -height 45 -radix hexadecimal /tbadder/DUT/G
add wave -noupdate -height 45 -radix hexadecimal /tbadder/DUT/P
add wave -noupdate -height 45 -radix hexadecimal /tbadder/DUT/IC
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {112 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 197
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {4670400 ps}
