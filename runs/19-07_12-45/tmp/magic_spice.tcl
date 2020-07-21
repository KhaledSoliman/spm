
lef read /openLANE_flow/pdks//EFS8A/libs.ref/techLEF/scs8hd/scs8hd_tech.lef
if {  [info exist ::env(EXTRA_LEFS)] } {
	set lefs_in $::env(EXTRA_LEFS)
	foreach lef_file $lefs_in {
		lef read $lef_file
	}
}
def read /openLANE_flow/designs/spm/runs/19-07_12-45//results/routing/spm.def
load spm -dereference
cd /openLANE_flow/designs/spm/runs/19-07_12-45//results//magic/
extract do local
extract warn all
extract
ext2spice lvs
ext2spice spm.ext
# exec cp spm.spice /openLANE_flow/designs/spm/runs/19-07_12-45//results/magic/spm.spice

