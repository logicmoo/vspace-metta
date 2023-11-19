cat mettamorph.metta PROGRAM.metta > RUN.metta
echo "" >> RUN.metta
echo "!" >> RUN.metta
cat INPUT.metta >> RUN.metta
echo "" >> RUN.metta
metta RUN.metta
