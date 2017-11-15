; ModuleID = '/home/zynq-fyp/Desktop/HoG_IP/backsub_hls_new/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a1938]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@backsub_str = internal unnamed_addr constant [8 x i8] c"backsub\00"
@p_str1812 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str1811 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str1810 = private unnamed_addr constant [6 x i8] c"loop1\00", align 1
@p_str1809 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1808 = private unnamed_addr constant [9 x i8] c"CRTL_BUS\00", align 1
@p_str1807 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1806 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1805 = private unnamed_addr constant [5 x i8] c"bram\00", align 1

declare i54 @llvm.part.select.i54(i54, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i16 @llvm.part.select.i16(i16, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define i32 @backsub(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i1* %inStream_V_user_V, i1* %inStream_V_last_V, i1* %inStream_V_id_V, i1* %inStream_V_dest_V, i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i1* %outStream_V_user_V, i1* %outStream_V_last_V, i1* %outStream_V_id_V, i1* %outStream_V_dest_V, [76800 x i16]* %frame, i1 zeroext %init) {
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %inStream_V_data_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_keep_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %inStream_V_strb_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_user_V), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_last_V), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_id_V), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %inStream_V_dest_V), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_V_data_V), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_keep_V), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_strb_V), !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_user_V), !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_last_V), !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_id_V), !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %outStream_V_dest_V), !map !61
  call void (...)* @_ssdm_op_SpecBitsMap([76800 x i16]* %frame), !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %init), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !77
  call void (...)* @_ssdm_op_SpecTopModule([8 x i8]* @backsub_str) nounwind
  %init_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %init)
  call void (...)* @_ssdm_op_SpecInterface([76800 x i16]* %frame, [5 x i8]* @p_str1805, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %init, [10 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1808, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i1* %outStream_V_user_V, i1* %outStream_V_last_V, i1* %outStream_V_id_V, i1* %outStream_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i1* %inStream_V_user_V, i1* %inStream_V_last_V, i1* %inStream_V_id_V, i1* %inStream_V_dest_V, [5 x i8]* @p_str1809, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str1807, i32 0, i32 0, i32 0, i32 0, [9 x i8]* @p_str1808, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806, [1 x i8]* @p_str1806) nounwind
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([6 x i8]* @p_str1810)
  br i1 %init_read, label %.preheader189, label %.preheader

.preheader189:                                    ; preds = %0, %1
  %i = phi i17 [ %i_1, %1 ], [ 0, %0 ]
  %tmp_s = icmp ult i17 %i, -54272
  br i1 %tmp_s, label %1, label %.loopexit

; <label>:1                                       ; preds = %.preheader189
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 38400, i64 38400, i64 38400)
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1811)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %empty_8 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i1* %inStream_V_user_V, i1* %inStream_V_last_V, i1* %inStream_V_id_V, i1* %inStream_V_dest_V)
  %tmp_data_V_6 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_8, 0
  %tmp_keep_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_8, 1
  %tmp_strb_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_8, 2
  %tmp_user_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_8, 3
  %tmp_last_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_8, 4
  %tmp_id_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_8, 5
  %tmp_dest_V = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_8, 6
  %tmp_data_V = trunc i32 %tmp_data_V_6 to i8
  %tmp_data_V_1 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_data_V_6, i32 16, i32 23)
  %tmp_3 = zext i17 %i to i64
  %frame_addr = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_3
  %tmp_4 = or i17 %i, 1
  %tmp_5 = zext i17 %tmp_4 to i64
  %frame_addr_1 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_5
  %tmp_6 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_data_V, i8 %tmp_data_V)
  store i16 %tmp_6, i16* %frame_addr, align 2
  %tmp_7 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %tmp_data_V_1, i8 %tmp_data_V_1)
  store i16 %tmp_7, i16* %frame_addr_1, align 2
  %tmp_keep_V_1 = trunc i4 %tmp_keep_V to i1
  %tmp_strb_V_1 = trunc i4 %tmp_strb_V to i1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i1P.i1P.i1P.i1P(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i1* %outStream_V_user_V, i1* %outStream_V_last_V, i1* %outStream_V_id_V, i1* %outStream_V_dest_V, i8 %tmp_data_V, i1 %tmp_keep_V_1, i1 %tmp_strb_V_1, i1 %tmp_user_V, i1 %tmp_last_V, i1 %tmp_id_V, i1 %tmp_dest_V)
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i1P.i1P.i1P.i1P(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i1* %outStream_V_user_V, i1* %outStream_V_last_V, i1* %outStream_V_id_V, i1* %outStream_V_dest_V, i8 %tmp_data_V_1, i1 %tmp_keep_V_1, i1 %tmp_strb_V_1, i1 %tmp_user_V, i1 %tmp_last_V, i1 %tmp_id_V, i1 %tmp_dest_V)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1811, i32 %tmp_2)
  %i_1 = add i17 2, %i
  br label %.preheader189

.preheader:                                       ; preds = %0, %_ifconv
  %i1 = phi i17 [ %i_2, %_ifconv ], [ 0, %0 ]
  %tmp_1 = icmp ult i17 %i1, -54272
  br i1 %tmp_1, label %_ifconv, label %.loopexit

_ifconv:                                          ; preds = %.preheader
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 38400, i64 38400, i64 38400)
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str1812)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1806) nounwind
  %empty_11 = call { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32* %inStream_V_data_V, i4* %inStream_V_keep_V, i4* %inStream_V_strb_V, i1* %inStream_V_user_V, i1* %inStream_V_last_V, i1* %inStream_V_id_V, i1* %inStream_V_dest_V)
  %tmp_data_V_7 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 0
  %tmp_keep_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 1
  %tmp_strb_V_2 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 2
  %tmp_user_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 3
  %tmp_last_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 4
  %tmp_id_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 5
  %tmp_dest_V_1 = extractvalue { i32, i4, i4, i1, i1, i1, i1 } %empty_11, 6
  %pix_11 = trunc i32 %tmp_data_V_7 to i8
  %pix_21 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_data_V_7, i32 16, i32 23)
  %tmp_9 = zext i17 %i1 to i64
  %frame_addr_2 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_9
  %frame_load = load i16* %frame_addr_2, align 2
  %pix_12 = trunc i16 %frame_load to i8
  %pix_13 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load, i32 8, i32 15)
  %tmp_10 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %pix_12, i8 %pix_11)
  store i16 %tmp_10, i16* %frame_addr_2, align 2
  %tmp_11 = zext i8 %pix_11 to i32
  %tmp_12_cast = zext i8 %pix_11 to i9
  %tmp_12 = sitofp i32 %tmp_11 to float
  %tmp_13 = fmul float %tmp_12, 0x3FB99999A0000000
  %tmp_14 = zext i8 %pix_12 to i32
  %tmp_15 = sitofp i32 %tmp_14 to float
  %tmp_16 = fmul float %tmp_15, 0x3FC99999A0000000
  %tmp_17 = fadd float %tmp_13, %tmp_16
  %tmp_18 = zext i8 %pix_13 to i32
  %tmp_19 = sitofp i32 %tmp_18 to float
  %tmp_20 = fmul float %tmp_19, 0x3FE6666660000000
  %x_assign_4 = fadd float %tmp_17, %tmp_20
  %p_Val2_s = bitcast float %x_assign_4 to i32
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_s to i23
  %p_Result_s = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_1) nounwind
  %tmp_8_i_i = zext i24 %p_Result_s to i54
  %tmp_i_i_i_cast2 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_cast2
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_i_i = sub i8 127, %loc_V
  %tmp_i_i_cast = sext i8 %tmp_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cast = sext i9 %sh_assign_1 to i24
  %tmp_1_i_i = zext i32 %sh_assign_1_cast to i54
  %tmp_2_i_i = lshr i24 %p_Result_s, %sh_assign_1_cast_cast
  %tmp_4_i_i = shl i54 %tmp_8_i_i, %tmp_1_i_i
  %tmp_45 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_2_i_i, i32 23)
  %tmp_21 = zext i1 %tmp_45 to i8
  %tmp_22 = call i8 @_ssdm_op_PartSelect.i8.i54.i32.i32(i54 %tmp_4_i_i, i32 23, i32 30)
  %result_V = select i1 %isNeg, i8 %tmp_21, i8 %tmp_22
  %tmp_23 = or i17 %i1, 1
  %tmp_24 = zext i17 %tmp_23 to i64
  %frame_addr_3 = getelementptr [76800 x i16]* %frame, i64 0, i64 %tmp_24
  %frame_load_1 = load i16* %frame_addr_3, align 2
  %pix_22 = trunc i16 %frame_load_1 to i8
  %pix_23 = call i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16 %frame_load_1, i32 8, i32 15)
  %tmp_25 = call i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8 %pix_22, i8 %pix_21)
  store i16 %tmp_25, i16* %frame_addr_3, align 2
  %tmp_26 = zext i8 %pix_21 to i32
  %tmp_27_cast = zext i8 %pix_21 to i9
  %tmp_27 = sitofp i32 %tmp_26 to float
  %tmp_28 = fmul float %tmp_27, 0x3FB99999A0000000
  %tmp_29 = zext i8 %pix_22 to i32
  %tmp_30 = sitofp i32 %tmp_29 to float
  %tmp_31 = fmul float %tmp_30, 0x3FC99999A0000000
  %tmp_32 = fadd float %tmp_28, %tmp_31
  %tmp_33 = zext i8 %pix_23 to i32
  %tmp_34 = sitofp i32 %tmp_33 to float
  %tmp_35 = fmul float %tmp_34, 0x3FE6666660000000
  %x_assign_5 = fadd float %tmp_32, %tmp_35
  %p_Val2_4 = bitcast float %x_assign_5 to i32
  %loc_V_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_4, i32 23, i32 30) nounwind
  %loc_V_3 = trunc i32 %p_Val2_4 to i23
  %p_Result_4 = call i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1 true, i23 %loc_V_3) nounwind
  %tmp_8_i_i1 = zext i24 %p_Result_4 to i54
  %tmp_i_i_i1_cast1 = zext i8 %loc_V_2 to i9
  %sh_assign_2 = add i9 -127, %tmp_i_i_i1_cast1
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_2, i32 8)
  %tmp_i_i1 = sub i8 127, %loc_V_2
  %tmp_i_i1_cast = sext i8 %tmp_i_i1 to i9
  %sh_assign_3 = select i1 %isNeg_1, i9 %tmp_i_i1_cast, i9 %sh_assign_2
  %sh_assign_3_cast = sext i9 %sh_assign_3 to i32
  %sh_assign_3_cast_cast = sext i9 %sh_assign_3 to i24
  %tmp_1_i_i1 = zext i32 %sh_assign_3_cast to i54
  %tmp_2_i_i1 = lshr i24 %p_Result_4, %sh_assign_3_cast_cast
  %tmp_4_i_i1 = shl i54 %tmp_8_i_i1, %tmp_1_i_i1
  %tmp_49 = call i1 @_ssdm_op_BitSelect.i1.i24.i32(i24 %tmp_2_i_i1, i32 23)
  %tmp_36 = zext i1 %tmp_49 to i8
  %tmp_37 = call i8 @_ssdm_op_PartSelect.i8.i54.i32.i32(i54 %tmp_4_i_i1, i32 23, i32 30)
  %result_V_1 = select i1 %isNeg_1, i8 %tmp_36, i8 %tmp_37
  %tmp_38_cast = zext i8 %result_V to i9
  %x_assign = sub i9 %tmp_12_cast, %tmp_38_cast
  %neg_i = sub i9 0, %x_assign
  %abscond_i = icmp sgt i9 %x_assign, 0
  %abs_i = select i1 %abscond_i, i9 %x_assign, i9 %neg_i
  %tmp_data_V_3 = icmp sgt i9 %abs_i, 14
  %tmp_data_V_4 = select i1 %tmp_data_V_3, i8 -1, i8 0
  %tmp_keep_V_3 = trunc i4 %tmp_keep_V_2 to i1
  %tmp_strb_V_3 = trunc i4 %tmp_strb_V_2 to i1
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i1P.i1P.i1P.i1P(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i1* %outStream_V_user_V, i1* %outStream_V_last_V, i1* %outStream_V_id_V, i1* %outStream_V_dest_V, i8 %tmp_data_V_4, i1 %tmp_keep_V_3, i1 %tmp_strb_V_3, i1 %tmp_user_V_1, i1 %tmp_last_V_1, i1 %tmp_id_V_1, i1 %tmp_dest_V_1)
  %tmp_41_cast = zext i8 %result_V_1 to i9
  %x_assign_1 = sub i9 %tmp_27_cast, %tmp_41_cast
  %neg_i1 = sub i9 0, %x_assign_1
  %abscond_i1 = icmp sgt i9 %x_assign_1, 0
  %abs_i1 = select i1 %abscond_i1, i9 %x_assign_1, i9 %neg_i1
  %tmp_data_V_5 = icmp sgt i9 %abs_i1, 14
  %tmp_data_V_2 = select i1 %tmp_data_V_5, i8 -1, i8 0
  call void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i1P.i1P.i1P.i1P(i8* %outStream_V_data_V, i1* %outStream_V_keep_V, i1* %outStream_V_strb_V, i1* %outStream_V_user_V, i1* %outStream_V_last_V, i1* %outStream_V_id_V, i1* %outStream_V_dest_V, i8 %tmp_data_V_2, i1 %tmp_keep_V_3, i1 %tmp_strb_V_3, i1 %tmp_user_V_1, i1 %tmp_last_V_1, i1 %tmp_id_V_1, i1 %tmp_dest_V_1)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str1812, i32 %tmp_8)
  %i_2 = add i17 2, %i1
  br label %.preheader

.loopexit:                                        ; preds = %.preheader189, %.preheader
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([6 x i8]* @p_str1810, i32 %tmp)
  ret i32 0
}

define weak void @_ssdm_op_Write.axis.volatile.i8P.i1P.i1P.i1P.i1P.i1P.i1P(i8*, i1*, i1*, i1*, i1*, i1*, i1*, i8, i1, i1, i1, i1, i1, i1) {
entry:
  store i8 %7, i8* %0
  store i1 %8, i1* %1
  store i1 %9, i1* %2
  store i1 %10, i1* %3
  store i1 %11, i1* %4
  store i1 %12, i1* %5
  store i1 %13, i1* %6
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

define weak { i32, i4, i4, i1, i1, i1, i1 } @_ssdm_op_Read.axis.volatile.i32P.i4P.i4P.i1P.i1P.i1P.i1P(i32*, i4*, i4*, i1*, i1*, i1*, i1*) {
entry:
  %empty = load i32* %0
  %empty_14 = load i4* %1
  %empty_15 = load i4* %2
  %empty_16 = load i1* %3
  %empty_17 = load i1* %4
  %empty_18 = load i1* %5
  %empty_19 = load i1* %6
  %mrv_0 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } undef, i32 %empty, 0
  %mrv1 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv_0, i4 %empty_14, 1
  %mrv2 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv1, i4 %empty_15, 2
  %mrv3 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv2, i1 %empty_16, 3
  %mrv4 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv3, i1 %empty_17, 4
  %mrv5 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv4, i1 %empty_18, 5
  %mrv6 = insertvalue { i32, i4, i4, i1, i1, i1, i1 } %mrv5, i1 %empty_19, 6
  ret { i32, i4, i4, i1, i1, i1, i1 } %mrv6
}

define weak i8 @_ssdm_op_PartSelect.i8.i54.i32.i32(i54, i32, i32) nounwind readnone {
entry:
  %empty = call i54 @llvm.part.select.i54(i54 %0, i32 %1, i32 %2)
  %empty_20 = trunc i54 %empty to i8
  ret i8 %empty_20
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_21 = trunc i32 %empty to i8
  ret i8 %empty_21
}

define weak i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone {
entry:
  %empty = call i16 @llvm.part.select.i16(i16 %0, i32 %1, i32 %2)
  %empty_22 = trunc i16 %empty to i8
  ret i8 %empty_22
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_23 = shl i9 1, %empty
  %empty_24 = and i9 %0, %empty_23
  %empty_25 = icmp ne i9 %empty_24, 0
  ret i1 %empty_25
}

define weak i1 @_ssdm_op_BitSelect.i1.i24.i32(i24, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i24
  %empty_26 = shl i24 1, %empty
  %empty_27 = and i24 %0, %empty_26
  %empty_28 = icmp ne i24 %empty_27, 0
  ret i1 %empty_28
}

define weak i24 @_ssdm_op_BitConcatenate.i24.i1.i23(i1, i23) nounwind readnone {
entry:
  %empty = zext i1 %0 to i24
  %empty_29 = zext i23 %1 to i24
  %empty_30 = shl i24 %empty, 23
  %empty_31 = or i24 %empty_30, %empty_29
  ret i24 %empty_31
}

define weak i16 @_ssdm_op_BitConcatenate.i16.i8.i8(i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %0 to i16
  %empty_32 = zext i8 %1 to i16
  %empty_33 = shl i16 %empty, 8
  %empty_34 = or i16 %empty_33, %empty_32
  ret i16 %empty_34
}

declare void @_GLOBAL__I_a1938() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [2 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 31, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"inStream.V.data.V", metadata !11, metadata !"uint32", i32 0, i32 31}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 1}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 3, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"inStream.V.keep.V", metadata !11, metadata !"uint4", i32 0, i32 3}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 3, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"inStream.V.strb.V", metadata !11, metadata !"uint4", i32 0, i32 3}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 0, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"inStream.V.user.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"inStream.V.last.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"inStream.V.id.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 0, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"inStream.V.dest.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 7, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"outStream.V.data.V", metadata !11, metadata !"uint8", i32 0, i32 7}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 0, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"outStream.V.keep.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 0, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"outStream.V.strb.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 0, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"outStream.V.user.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 0, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"outStream.V.last.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 0, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"outStream.V.id.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 0, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"outStream.V.dest.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 15, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"frame", metadata !69, metadata !"unsigned short", i32 0, i32 15}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 76799, i32 1}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 0, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"init", metadata !75, metadata !"bool", i32 0, i32 0}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 0, i32 0}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 31, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"return", metadata !81, metadata !"int", i32 0, i32 31}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 1, i32 0}
