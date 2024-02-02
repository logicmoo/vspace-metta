git rm .bash_history -f
git status .
git status
git commit -am inf-ctl-month-xp
git push logicmoo 
mettalog inference-control/inf-ctl-month-bc-xp.metta 
MeTTa --html --test --clean  inference-control/inf-ctl-month-bc-xp.metta 
MeTTa --html --test --clean  inference-control/inf-ctl-month-bc-xp.metta cd /opt/logicmoo_workspace/packs_sys/logicmoo_opencog/MeTTa/vspace-metta
cp /opt/logicmoo_workspace/packs_sys/logicmoo_opencog/MeTTa/vspace-metta/examples/extended_compat/hyperon-pln_metta/inference-control/inf-ctl-month-xp.metta.html /var/www/html/public/
cd examples/extended_compat/hyperon-pln_metta/
grep [1-9]h
grep [1-9]h . -R --include="*.metta"
mv ../../../../hyperon-miner/ HMM 
ls
mv HMM/ ..
rm -rf hyperon-pln
cd hyperon-pln_metta/
