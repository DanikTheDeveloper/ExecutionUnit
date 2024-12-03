onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -height 80 -radix hexadecimal /tbadder/TBA
add wave -noupdate -height 80 -radix hexadecimal /tbadder/TBB
add wave -noupdate -height 80 -radix hexadecimal /tbadder/TBS
add wave -noupdate -divider OneBitSignals
add wave -noupdate -radix hexadecimal /tbadder/TBCin
add wave -noupdate -radix hexadecimal /tbadder/TBCout
add wave -noupdate -radix hexadecimal /tbadder/TBOvfl
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {Start {17792000 ps} 0} {ContaminationDelay {17801114 ps} 0} {{Cursor 7} {17810025 ps} 0}
quietly wave cursor active 3
configure wave -namecolwidth 187
configure wave -valuecolwidth 113
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
WaveRestoreZoom {17782320 ps} {17818547 ps}
