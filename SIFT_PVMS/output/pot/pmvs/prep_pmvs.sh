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
mv pmvs/frame0011.rd.jpg pmvs/visualize/00000000.jpg
mv pmvs/00000000.txt pmvs/txt/
mv pmvs/frame0000.rd.jpg pmvs/visualize/00000001.jpg
mv pmvs/00000001.txt pmvs/txt/
mv pmvs/frame0018.rd.jpg pmvs/visualize/00000002.jpg
mv pmvs/00000002.txt pmvs/txt/
mv pmvs/frame0016.rd.jpg pmvs/visualize/00000003.jpg
mv pmvs/00000003.txt pmvs/txt/
mv pmvs/frame0005.rd.jpg pmvs/visualize/00000004.jpg
mv pmvs/00000004.txt pmvs/txt/
mv pmvs/frame0002.rd.jpg pmvs/visualize/00000005.jpg
mv pmvs/00000005.txt pmvs/txt/
mv pmvs/frame0007.rd.jpg pmvs/visualize/00000006.jpg
mv pmvs/00000006.txt pmvs/txt/
mv pmvs/frame0001.rd.jpg pmvs/visualize/00000007.jpg
mv pmvs/00000007.txt pmvs/txt/
mv pmvs/frame0010.rd.jpg pmvs/visualize/00000008.jpg
mv pmvs/00000008.txt pmvs/txt/
mv pmvs/frame0013.rd.jpg pmvs/visualize/00000009.jpg
mv pmvs/00000009.txt pmvs/txt/
mv pmvs/frame0017.rd.jpg pmvs/visualize/00000010.jpg
mv pmvs/00000010.txt pmvs/txt/
mv pmvs/frame0009.rd.jpg pmvs/visualize/00000011.jpg
mv pmvs/00000011.txt pmvs/txt/
mv pmvs/frame0003.rd.jpg pmvs/visualize/00000012.jpg
mv pmvs/00000012.txt pmvs/txt/
mv pmvs/frame0004.rd.jpg pmvs/visualize/00000013.jpg
mv pmvs/00000013.txt pmvs/txt/
mv pmvs/frame0015.rd.jpg pmvs/visualize/00000014.jpg
mv pmvs/00000014.txt pmvs/txt/
mv pmvs/frame0006.rd.jpg pmvs/visualize/00000015.jpg
mv pmvs/00000015.txt pmvs/txt/
mv pmvs/frame0012.rd.jpg pmvs/visualize/00000016.jpg
mv pmvs/00000016.txt pmvs/txt/
mv pmvs/frame0008.rd.jpg pmvs/visualize/00000017.jpg
mv pmvs/00000017.txt pmvs/txt/
mv pmvs/frame0014.rd.jpg pmvs/visualize/00000018.jpg
mv pmvs/00000018.txt pmvs/txt/

echo "Running Bundle2Vis to generate vis.dat
"
$BUNDLER_BIN_PATH/Bundle2Vis pmvs/bundle.rd.out pmvs/vis.dat



echo @@ Sample command for running pmvs:
echo "   pmvs2 pmvs/ pmvs_options.txt"
echo "    - or - "
echo "   use Dr. Yasutaka Furukawa's view clustering algorithm to generate a set of options files."
echo "       The clustering software is available at http://grail.cs.washington.edu/software/cmvs"
