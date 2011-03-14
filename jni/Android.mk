
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE    := iconv
LOCAL_CFLAGS    := \
	-Wno-multichar \
	-D_ANDROID \
	-DLIBDIR="\"c\"" \
	-DBUILDING_LIBICONV \
	-DIN_LIBRARY
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libiconv-1.13.1 \
	$(LOCAL_PATH)/libiconv-1.13.1/include \
	$(LOCAL_PATH)/libiconv-1.13.1/lib \
	$(LOCAL_PATH)/libiconv-1.13.1/libcharset/include
LOCAL_SRC_FILES := \
	libiconv-1.13.1/lib/iconv.c \
	libiconv-1.13.1/lib/relocatable.c \
	libiconv-1.13.1/libcharset/lib/localcharset.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := proj
# this list was generated with:
#   find proj-4.7.0/ -name "*.c" | grep -Ev "tests|doc" | sort | awk '{ print "\t"$1" \\" }'
LOCAL_C_INCLUDES := $(LOCAL_PATH)/proj-4.7.0/src
LOCAL_LDLIBS := -lm
LOCAL_SRC_FILES := \
	proj-4.7.0/src/aasincos.c \
	proj-4.7.0/src/adjlon.c \
	proj-4.7.0/src/bch2bps.c \
	proj-4.7.0/src/bchgen.c \
	proj-4.7.0/src/biveval.c \
	proj-4.7.0/src/cs2cs.c \
	proj-4.7.0/src/dmstor.c \
	proj-4.7.0/src/emess.c \
	proj-4.7.0/src/gen_cheb.c \
	proj-4.7.0/src/geocent.c \
	proj-4.7.0/src/geod.c \
	proj-4.7.0/src/geod_for.c \
	proj-4.7.0/src/geod_inv.c \
	proj-4.7.0/src/geod_set.c \
	proj-4.7.0/src/jniproj.c \
	proj-4.7.0/src/mk_cheby.c \
	proj-4.7.0/src/nad2bin.c \
	proj-4.7.0/src/nad2nad.c \
	proj-4.7.0/src/nad_cvt.c \
	proj-4.7.0/src/nad_init.c \
	proj-4.7.0/src/nad_intr.c \
	proj-4.7.0/src/PJ_aea.c \
	proj-4.7.0/src/PJ_aeqd.c \
	proj-4.7.0/src/PJ_airy.c \
	proj-4.7.0/src/PJ_aitoff.c \
	proj-4.7.0/src/pj_apply_gridshift.c \
	proj-4.7.0/src/PJ_august.c \
	proj-4.7.0/src/pj_auth.c \
	proj-4.7.0/src/PJ_bacon.c \
	proj-4.7.0/src/PJ_bipc.c \
	proj-4.7.0/src/PJ_boggs.c \
	proj-4.7.0/src/PJ_bonne.c \
	proj-4.7.0/src/PJ_cass.c \
	proj-4.7.0/src/PJ_cc.c \
	proj-4.7.0/src/PJ_cea.c \
	proj-4.7.0/src/PJ_chamb.c \
	proj-4.7.0/src/PJ_collg.c \
	proj-4.7.0/src/PJ_crast.c \
	proj-4.7.0/src/pj_datums.c \
	proj-4.7.0/src/pj_datum_set.c \
	proj-4.7.0/src/PJ_denoy.c \
	proj-4.7.0/src/pj_deriv.c \
	proj-4.7.0/src/PJ_eck1.c \
	proj-4.7.0/src/PJ_eck2.c \
	proj-4.7.0/src/PJ_eck3.c \
	proj-4.7.0/src/PJ_eck4.c \
	proj-4.7.0/src/PJ_eck5.c \
	proj-4.7.0/src/pj_ellps.c \
	proj-4.7.0/src/pj_ell_set.c \
	proj-4.7.0/src/PJ_eqc.c \
	proj-4.7.0/src/PJ_eqdc.c \
	proj-4.7.0/src/pj_errno.c \
	proj-4.7.0/src/pj_factors.c \
	proj-4.7.0/src/PJ_fahey.c \
	proj-4.7.0/src/PJ_fouc_s.c \
	proj-4.7.0/src/pj_fwd.c \
	proj-4.7.0/src/PJ_gall.c \
	proj-4.7.0/src/pj_gauss.c \
	proj-4.7.0/src/pj_geocent.c \
	proj-4.7.0/src/PJ_geos.c \
	proj-4.7.0/src/PJ_gins8.c \
	proj-4.7.0/src/PJ_gnom.c \
	proj-4.7.0/src/PJ_gn_sinu.c \
	proj-4.7.0/src/PJ_goode.c \
	proj-4.7.0/src/pj_gridinfo.c \
	proj-4.7.0/src/pj_gridlist.c \
	proj-4.7.0/src/PJ_gstmerc.c \
	proj-4.7.0/src/PJ_hammer.c \
	proj-4.7.0/src/PJ_hatano.c \
	proj-4.7.0/src/PJ_imw_p.c \
	proj-4.7.0/src/pj_init.c \
	proj-4.7.0/src/pj_initcache.c \
	proj-4.7.0/src/pj_inv.c \
	proj-4.7.0/src/PJ_krovak.c \
	proj-4.7.0/src/PJ_labrd.c \
	proj-4.7.0/src/PJ_laea.c \
	proj-4.7.0/src/PJ_lagrng.c \
	proj-4.7.0/src/PJ_larr.c \
	proj-4.7.0/src/PJ_lask.c \
	proj-4.7.0/src/pj_latlong.c \
	proj-4.7.0/src/PJ_lcca.c \
	proj-4.7.0/src/PJ_lcc.c \
	proj-4.7.0/src/pj_list.c \
	proj-4.7.0/src/PJ_loxim.c \
	proj-4.7.0/src/PJ_lsat.c \
	proj-4.7.0/src/pj_malloc.c \
	proj-4.7.0/src/PJ_mbtfpp.c \
	proj-4.7.0/src/PJ_mbtfpq.c \
	proj-4.7.0/src/PJ_mbt_fps.c \
	proj-4.7.0/src/PJ_merc.c \
	proj-4.7.0/src/PJ_mill.c \
	proj-4.7.0/src/pj_mlfn.c \
	proj-4.7.0/src/PJ_mod_ster.c \
	proj-4.7.0/src/PJ_moll.c \
	proj-4.7.0/src/pj_msfn.c \
	proj-4.7.0/src/pj_mutex.c \
	proj-4.7.0/src/PJ_nell.c \
	proj-4.7.0/src/PJ_nell_h.c \
	proj-4.7.0/src/PJ_nocol.c \
	proj-4.7.0/src/PJ_nsper.c \
	proj-4.7.0/src/PJ_nzmg.c \
	proj-4.7.0/src/PJ_ob_tran.c \
	proj-4.7.0/src/PJ_ocea.c \
	proj-4.7.0/src/PJ_oea.c \
	proj-4.7.0/src/PJ_omerc.c \
	proj-4.7.0/src/pj_open_lib.c \
	proj-4.7.0/src/PJ_ortho.c \
	proj-4.7.0/src/pj_param.c \
	proj-4.7.0/src/pj_phi2.c \
	proj-4.7.0/src/PJ_poly.c \
	proj-4.7.0/src/pj_pr_list.c \
	proj-4.7.0/src/PJ_putp2.c \
	proj-4.7.0/src/PJ_putp3.c \
	proj-4.7.0/src/PJ_putp4p.c \
	proj-4.7.0/src/PJ_putp5.c \
	proj-4.7.0/src/PJ_putp6.c \
	proj-4.7.0/src/pj_qsfn.c \
	proj-4.7.0/src/pj_release.c \
	proj-4.7.0/src/PJ_robin.c \
	proj-4.7.0/src/PJ_rpoly.c \
	proj-4.7.0/src/PJ_sconics.c \
	proj-4.7.0/src/PJ_somerc.c \
	proj-4.7.0/src/PJ_sterea.c \
	proj-4.7.0/src/PJ_stere.c \
	proj-4.7.0/src/pj_strerrno.c \
	proj-4.7.0/src/PJ_sts.c \
	proj-4.7.0/src/PJ_tcc.c \
	proj-4.7.0/src/PJ_tcea.c \
	proj-4.7.0/src/PJ_tmerc.c \
	proj-4.7.0/src/PJ_tpeqd.c \
	proj-4.7.0/src/pj_transform.c \
	proj-4.7.0/src/pj_tsfn.c \
	proj-4.7.0/src/pj_units.c \
	proj-4.7.0/src/PJ_urm5.c \
	proj-4.7.0/src/PJ_urmfps.c \
	proj-4.7.0/src/pj_utils.c \
	proj-4.7.0/src/PJ_vandg2.c \
	proj-4.7.0/src/PJ_vandg4.c \
	proj-4.7.0/src/PJ_vandg.c \
	proj-4.7.0/src/PJ_wag2.c \
	proj-4.7.0/src/PJ_wag3.c \
	proj-4.7.0/src/PJ_wag7.c \
	proj-4.7.0/src/PJ_wink1.c \
	proj-4.7.0/src/PJ_wink2.c \
	proj-4.7.0/src/pj_zpoly1.c \
	proj-4.7.0/src/proj.c \
	proj-4.7.0/src/proj_mdist.c \
	proj-4.7.0/src/proj_rouss.c \
	proj-4.7.0/src/p_series.c \
	proj-4.7.0/src/rtodms.c \
	proj-4.7.0/src/vector1.c
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := spatialite
LOCAL_CFLAGS	:= -D__ANDROID__ -DOMIT_GEOS=1
LOCAL_LDLIBS	:= -llog
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libiconv-1.13.1/include \
	$(LOCAL_PATH)/libiconv-1.13.1/libcharset/include \
	$(LOCAL_PATH)/geos-3.2.2/source/headers \
	$(LOCAL_PATH)/geos-3.2.2/capi \
	$(LOCAL_PATH)/proj-4.7.0/src
LOCAL_SRC_FILES := \
	./libspatialite-amalgamation-2.3.1/spatialite.c
include $(BUILD_STATIC_LIBRARY)


include $(CLEAR_VARS)
LOCAL_MODULE    := jsqlite
LOCAL_CFLAGS	:= -D__ANDROID__ \
	-DHAVE_SQLITE3=1 \
	-DHAVE_SQLITE3_LOAD_EXTENSION=1 \
	-DCANT_PASS_VALIST_AS_CHARPTR=1 \
	-Dfdatasync=fsync
LOCAL_LDLIBS	:= -llog
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/libspatialite-amalgamation-2.3.1/headers/spatialite \
	$(LOCAL_PATH)/javasqlite-20110106/native/
LOCAL_SRC_FILES := \
	javasqlite-20110106/native/sqlite_jni.c \
	libspatialite-amalgamation-2.3.1/sqlite3.c
LOCAL_STATIC_LIBRARIES := spatialite iconv proj
include $(BUILD_SHARED_LIBRARY)

