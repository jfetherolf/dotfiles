set terminal wxt dashed size 625,425 enhanced font 'Times,16' 

# Use these defined styles, not defaults
set style increment user

# Set all linestyles to have linewidth 2
set style data lines
do for [i=1:100] {
    set style line i linetype i linewidth 2
}

# Re-order default pointtypes
set style line 1 pointtype 64    # open squares 
set style line 2 pointtype 65    # open circles
set style line 3 pointtype 2     # X's 
set style line 4 pointtype 66    # open triangles 

set style line 1 pointtype 5 ps 1.1  # filled squares 
set style line 2 pointtype 7 ps 1.3  # filled circles
set style line 3 pointtype 2         # X's 
set style line 4 pointtype 9 ps 1.6  # filled triangles 
set style line 5 pointtype 5         # filled squares 

# Add gnuplot-colorbrewer and layout templates to loadpath
set loadpath '~/utils/gnuplot/gnuplot-colorbrewer-master/diverging' \
    '~/utils/gnuplot/gnuplot-colorbrewer-master/qualitative' \
    '~/utils/gnuplot/gnuplot-colorbrewer-master/sequential' \
    '~/utils/gnuplot/layout'

# Load Set1.plt for lines and Spectral.plt for pm3d
load 'Set1.plt'
load 'Spectral_pm3d.plt'
set palette negative

# Add more default lines
set style line 9 linetype 1 linewidth 2 linecolor 'black'
set style line 99 linetype 1 linewidth 2 linecolor 'black'

# Standardize the key line-sample length 
set key samplen 1.5
