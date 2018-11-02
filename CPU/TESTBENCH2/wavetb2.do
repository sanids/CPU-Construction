onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate {/lab7_ptb2/DUT/MEM/mem[0]}
add wave -noupdate {/lab7_ptb2/DUT/MEM/mem[1]}
add wave -noupdate {/lab7_ptb2/DUT/MEM/mem[2]}
add wave -noupdate {/lab7_ptb2/DUT/MEM/mem[3]}
add wave -noupdate {/lab7_ptb2/DUT/MEM/mem[4]}
add wave -noupdate {/lab7_ptb2/DUT/MEM/mem[5]}
add wave -noupdate {/lab7_ptb2/DUT/MEM/mem[4]}
add wave -noupdate {/lab7_ptb2/DUT/MEM/mem[6]}
add wave -noupdate {/lab7_ptb2/DUT/MEM/mem[7]}
add wave -noupdate /lab7_ptb2/DUT/CPU/PC
add wave -noupdate /lab7_ptb2/err
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {32 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {341 ps}
