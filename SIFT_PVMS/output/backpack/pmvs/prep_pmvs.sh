# Script for preparing images and calibration data 
#   for Yasutaka Furukawa's PMVS system

BUNDLER_BIN_PATH= # Edit this line before running
if [ "$BUNDLER_BIN_PATH" == "" ] ; then echo Please edit prep_pmvs.sh to specify the path to the  bundler binaries.; exit; fi
# Apply radial undistortion to the images
$BUNDLER_BIN_PATH/RadialUndistort list.txt bundle/bundle.out pmvs

# Create directory structure
mkdir -p pmvs/txt/
mkdir -p pmvs/visualize/
mkdir -p pmvs/models/

# Copy and rename files
mv pmvs/frame0038.rd.jpg pmvs/visualize/00000000.jpg
mv pmvs/00000000.txt pmvs/txt/
mv pmvs/frame0033.rd.jpg pmvs/visualize/00000001.jpg
mv pmvs/00000001.txt pmvs/txt/
mv pmvs/frame0036.rd.jpg pmvs/visualize/00000002.jpg
mv pmvs/00000002.txt pmvs/txt/
mv pmvs/frame0032.rd.jpg pmvs/visualize/00000003.jpg
mv pmvs/00000003.txt pmvs/txt/
mv pmvs/frame0027.rd.jpg pmvs/visualize/00000004.jpg
mv pmvs/00000004.txt pmvs/txt/
mv pmvs/frame0034.rd.jpg pmvs/visualize/00000005.jpg
mv pmvs/00000005.txt pmvs/txt/
mv pmvs/frame0029.rd.jpg pmvs/visualize/00000006.jpg
mv pmvs/00000006.txt pmvs/txt/
mv pmvs/frame0023.rd.jpg pmvs/visualize/00000007.jpg
mv pmvs/00000007.txt pmvs/txt/
mv pmvs/frame0037.rd.jpg pmvs/visualize/00000008.jpg
mv pmvs/00000008.txt pmvs/txt/
mv pmvs/frame0024.rd.jpg pmvs/visualize/00000009.jpg
mv pmvs/00000009.txt pmvs/txt/
mv pmvs/frame0031.rd.jpg pmvs/visualize/00000010.jpg
mv pmvs/00000010.txt pmvs/txt/
mv pmvs/frame0022.rd.jpg pmvs/visualize/00000011.jpg
mv pmvs/00000011.txt pmvs/txt/
mv pmvs/frame0026.rd.jpg pmvs/visualize/00000012.jpg
mv pmvs/00000012.txt pmvs/txt/
mv pmvs/frame0025.rd.jpg pmvs/visualize/00000013.jpg
mv pmvs/00000013.txt pmvs/txt/
mv pmvs/frame0028.rd.jpg pmvs/visualize/00000014.jpg
mv pmvs/00000014.txt pmvs/txt/
mv pmvs/frame0030.rd.jpg pmvs/visualize/00000015.jpg
mv pmvs/00000015.txt pmvs/txt/
mv pmvs/frame0035.rd.jpg pmvs/visualize/00000016.jpg
mv pmvs/00000016.txt pmvs/txt/

echo "Running Bundle2Vis to generate vis.dat
"
$BUNDLER_BIN_PATH/Bundle2Vis pmvs/bundle.rd.out pmvs/vis.dat



echo @@ Sample command for running pmvs:
echo "   pmvs2 pmvs/ pmvs_options.txt"
echo "    - or - "
echo "   use Dr. Yasutaka Furukawa's view clustering algorithm to generate a set of options files."
echo "       The clustering software is available at http://grail.cs.washington.edu/software/cmvs"
